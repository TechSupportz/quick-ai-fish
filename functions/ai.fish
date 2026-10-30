function ai --description "Quick tasks via an AI model (set \$ai_model to swap it)"
    set -q ai_model; or set -l ai_model gpt-6-luna
    _ai_run $ai_model $argv
end
