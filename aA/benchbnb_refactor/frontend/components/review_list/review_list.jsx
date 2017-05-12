const ReviewList = ({reviews}) => (

  reviews.map((review) => {
    return(
      <div key={review.id}>
        <ul className="review-list">
          <li>Rating: { review.rating }</li>
          <li>{ review.body }</li>
        </ul>
      </div>
    );
  })

);

export default ReviewList;
