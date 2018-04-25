Vue.component('review-stars', {

  template: `<div class="star-rating">
        <label class="star-rating-star" v-for="rating in ratings"
        :class="{'is-selected': ((value >= rating) && value != null), 'is-disabled': disabled}"
        v-on:click="updateValue(rating)" v-on:mouseover="updateValue(rating)" v-on:mouseout="updateValue(rating)">
        <input class="star-rating star-rating-checkbox" type="radio" :value="rating"
        v-model="value" :disabled="disabled">★</label></div>`,


  //The child has a prop named 'value'. v-model will automatically bind to this prop
  props: ['value', 'disabled'],

  data: function() {
    return {
      ratings: [1, 2, 3, 4, 5]
    };
  },

  methods: {
    updateValue: function (value) {
      //debugger;
      if (!this.disabled) {
        this.$emit('input', value);
      }
    }
  },
});

const videoComponent = {
	// do some non-VM stuff here => push the comments into the VM
	addComments(data) {
		// process the comment # and convert that to stars?
		data.forEach(review => videoComponent.vm.reviews.push(review));
	},

	vm : new Vue({
		delimiters : ["${", "}"],

		el : "#video",

		data : {
			reviews : [],

			numStars : 0,

			review : "",

      currentId : null

		},

		methods : {
			addReview() {
				this.currentId = document.querySelector('.movId').textContent;

        axios.post('/api', {
           id : this.currentId,
           stars : this.numStars,
           review : this.review
        })
        .then((response) => {
          console.log(response);
        })
        .catch((error) => {
          console.log(error);
        });

				// push the review to the reviews array so that it's there b4 the next page load
        this.reviews.push({
          comments_copy : this.review,
          comments_rating : this.numStars,
          comments_date : `${ new Date() }`
        });

        this.numStars = 0;
        this.review = "";
			}
		}
	})
}

videoComponent.addComments(appData.movies);
