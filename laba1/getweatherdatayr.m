function [t,rain,temp]=getweatherdatayr(url)
  % i URLen listes opp land/fylke/kommune/sted. 
  % Eksempel: http://yr.no/sted/Norge/Oslo/Oslo/Bogstad/varsel_time_for_time.xml
  t=[];
  rain=[];
  temp=[];
  doc=xmlread(url);
  childnodes=doc.getElementsByTagName('time');
  for n=0:childnodes.getLength-1
      nexttime=childnodes.item(n);
      nextt=nexttime.getAttribute('from');
      
      try
          nextt=char(nextt);
          if length(nextt)<=10
              continue;
          end
          nextt = strrep(nextt, 'T', ' ');
	      nextt = datenum(nextt, 31);  
      
          %totime=nexttime.getAttribute('to');
          nextrain=0;
          nexttemp=0;
  
          rains=nexttime.getElementsByTagName('precipitation');
          if rains.getLength>=1
              nextrain=rains.item(0).getAttribute('value');
          end
      
          temps=nexttime.getElementsByTagName('temperature');
          if temps.getLength>=1
              nexttemp=temps.item(0).getAttribute('value');
          end
      
          if ~isempty(nextt) && ~isempty(nextrain) && ~isempty(nexttemp)
              t=[t nextt];
              rain=[rain str2double(char(nextrain))];
              temp=[temp str2double(char(nexttemp))];
          end
      catch exception
      end
  end
      