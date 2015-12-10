ARG   locale

RUN   locale-gen --no-purge $locale && \
      update-locale LANG=$locale && \
      dpkg-reconfigure locales

ENV   LANGUAGE $locale
ENV   LANG $locale
ENV   LC_ALL $locale
