import http from '../utils/http';

const BASE_URL = '/api/quiz';

export function getQuestions() {
    return http.get(`${BASE_URL}/question`, {});
}