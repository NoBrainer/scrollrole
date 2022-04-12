import { reduce } from 'lodash';

const DEFAULT_EXPIRES = 7;
const DEFAULT_PATH = '/';

export function deleteCookie(name) {
  document.cookie = `${name}=; expires=${getCookieExpiration(-1)}`;
}

export function setCookie(name, value, { expires = DEFAULT_EXPIRES, path = DEFAULT_PATH } = {}) {
  document.cookie = `${name}=${encodeURIComponent(value)}; expires=${getCookieExpiration(expires)}; path=${path}`;
}

export function getCookie(name) {
  const cookies = document.cookie.split('; ');
  return reduce(
    cookies,
    (result, cookie) => {
      const parts = cookie.split('=');
      return parts[0] === name ? decodeURIComponent(parts[1]) : result;
    },
    ''
  );
}

function getCookieExpiration(days) {
  return new Date(Date.now() + days * 86400000).toUTCString();
}
