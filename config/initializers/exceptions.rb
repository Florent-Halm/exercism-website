class BadgeCriteriaNotFulfilledError < RuntimeError; end

class DuplicateSubmissionError < RuntimeError; end

class ExerciseUnavailableError < RuntimeError; end

class SubmissionFileTooLargeError < RuntimeError; end

class SolutionLockedByAnotherMentorError < RuntimeError; end

class SolutionNotFoundError < RuntimeError; end

class TooManyIterationsError < RuntimeError; end

class TrackHasCyclicPrerequisiteError < RuntimeError; end

class TrackSearchStatusWithoutUserError < RuntimeError; end

class TrackSearchInvalidStatusError < RuntimeError; end

class UserTrackNotFoundError < RuntimeError; end

class ReputationTokenLevelUndefined < RuntimeError; end

class ReputationTokenReasonInvalid < RuntimeError; end

class ReputationTokenCategoryInvalid < RuntimeError; end
