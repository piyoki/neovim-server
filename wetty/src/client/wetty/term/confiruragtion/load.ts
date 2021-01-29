import _ from 'lodash';

export function loadOptions(): object {
  const defaultOptions = {
    fontSize: 16,
    fontFamily: 'DroidSansMono Nerd Font',
  };
  try {
    return _.isUndefined(localStorage.options)
      ? defaultOptions
      : JSON.parse(localStorage.options);
  } catch {
    return defaultOptions;
  }
}
