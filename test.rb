require 'net/http'
require 'uri'

i = 0

while i < 250000 do
puts i
i+=1
uri = URI.parse("http://swordlegends.com/index.php?p=invasao")
request = Net::HTTP::Post.new(uri)
request["Host"] = "swordlegends.com"
request["Cache-Control"] = "max-age=0"
request["Origin"] = "http://swordlegends.com"
request["Upgrade-Insecure-Requests"] = "1"
request["User-Agent"] = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36"
request["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3"
request["Referer"] = "http://swordlegends.com/index.php?p=invasao"
request["Accept-Language"] = "pt-PT,pt;q=0.9,en-US;q=0.8,en;q=0.7"
request["Cookie"] = "_ga=GA1.2.1174410651.1563111470; _gid=GA1.2.2038266189.1563400944; jv_visits_count_Anvvd014ua=2; PHPSESSID=580vkfpnag4kcs9kq7ietknug7; logado=1; session_c=384617212260"
request.set_form_data(
  "atacar" => "Atacar Xodera",
)
req_options = {
  use_ssl: uri.scheme == "https",
}

response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
  http.request(request)
sleep 180
end
end