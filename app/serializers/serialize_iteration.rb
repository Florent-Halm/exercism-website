class SerializeIteration
  include Mandate

  initialize_with :iteration

  def call
    {
      uuid: iteration.uuid,
      submission_uuid: iteration.submission.uuid,
      idx: iteration.idx,
      status: iteration.status.to_s,
      num_essential_automated_comments: iteration.num_essential_automated_comments,
      num_actionable_automated_comments: iteration.num_actionable_automated_comments,
      num_non_actionable_automated_comments: iteration.num_non_actionable_automated_comments,
      submission_method: iteration.submission.submitted_via,
      created_at: iteration.created_at.iso8601,
      tests_status: iteration.submission.tests_status,
      representer_feedback: iteration.representer_feedback,
      analyzer_feedback: iteration.analyzer_feedback,
      links: {
        self: Exercism::Routes.track_exercise_iterations_url(iteration.track, iteration.exercise, idx: iteration.idx)
      }
    }
  end
end
