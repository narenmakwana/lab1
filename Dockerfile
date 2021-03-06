# (C) Copyright IBM Corporation 2015,2018.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#FROM lab1:latest
#Uncomment the line above to pull prebuilt image and comment line below if on a slow network 
FROM websphere-liberty:18.0.0.4-kernel 
COPY --chown=1001:0 server.xml /config/
COPY --chown=1001:0 ServletApp.war /config/apps/

RUN /opt/ibm/wlp/bin/installUtility install  --acceptLicense defaultServer
