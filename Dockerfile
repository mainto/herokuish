FROM bramvdbogaerde/armhf-cedarish 
RUN mkdir ~/.basher && cp /bin/bash ~/.basher/bash
RUN curl https://github.com/mainto/herokuish/releases/download/v0.3.8/herokuish_0.3.8_linux_armv7l.tgz \
		--silent -L | tar -xzC /bin
RUN /bin/herokuish buildpack install \
	&& ln -s /bin/herokuish /build \
	&& ln -s /bin/herokuish /start \
	&& ln -s /bin/herokuish /exec
