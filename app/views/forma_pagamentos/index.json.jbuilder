json.array!(@forma_pagamentos) do |forma_pagamento|
  json.extract! forma_pagamento, :id, :nome, :qtdeparcelas
  json.url forma_pagamento_url(forma_pagamento, format: :json)
end
