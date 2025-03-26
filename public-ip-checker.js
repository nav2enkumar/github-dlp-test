fetch('https://api64.ipify.org?format=json')
  .then(response => response.json())
  .then(data => console.log(`Your Public IP Address is: ${data.ip}`))
  .catch(error => console.error('Error fetching IP:', error));
