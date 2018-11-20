defmodule Botbuilder.AI.QnaMaker do
  @type result :: %{
          # The list of questions indexed in the QnA Service for the given answer. (If any)
          questions: Enum.t(),
          # Answer from the knowledge base.
          answer: String.t(),
          # Confidence on a scale from 0.0 to 1.0 that the answer matches the users intent.
          score: number,
          # Metadata associated with the answer (If any)
          metadata: term | nil,
          # The source from which the QnA was extracted (If any)
          source: String.t() | nil,
          # The index of the answer in the knowledge base. V3 uses 'qnaId', V4 uses 'id'. (If any)
          id: integer | nil
        }

  # Additional settings used to configure a `QnAMaker` instance.
  @type options :: %{
          # Minimum score accepted. Defaults to "0.3".
          scoreThreshold: number | nil,

          # Number of results to return. Defaults to "1".
          top: number | nil
        }
end
