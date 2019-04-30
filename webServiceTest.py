import requests

url="http://localhost:8011/IpasServices/IpasServices"
#headers = {'content-type': 'application/soap+xml'}
headers = {'content-type': 'text/xml'}
body = """<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ipas="http://ipas.wipo.int/IpasServices">
   <soapenv:Header/>
   <soapenv:Body>
      <ipas:AgentRead>
         <!--Optional:-->
         <arg0>
            <!--Optional:-->
            <agentCode>
               <!--Optional:-->
               <doubleValue>1</doubleValue>
            </agentCode>
         </arg0>
      </ipas:AgentRead>
   </soapenv:Body>
</soapenv:Envelope>"""

response = requests.post(url,data=body,headers=headers)
print (response.content)