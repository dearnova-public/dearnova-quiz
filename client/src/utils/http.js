import axios from 'axios';

console.log("Axios API baseUrl: " + process.env.VUE_APP_API_BASE_URL);
const axiosInstance = axios.create({
  baseURL: process.env.VUE_APP_API_BASE_URL,
});

export default axiosInstance;