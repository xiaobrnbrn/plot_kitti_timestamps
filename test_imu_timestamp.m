clear all;
% Data = importdata('timestamps.txt');
% A = Data.data;
% B = A(:,2);
% k = size(B);
% for i = 1:k
%     
% 
% 
% 
% end
% plot(B,'o');

filename = 'timestamps.txt';
[year,mon,day,hour,min,sec] = textread(filename,'%d-%d-%d %d:%d:%f');
% day = num2str(day,'%02d');

k = size(year);
m = k(1) - 1;
% for i = 1:m
% %     if((sec(i+1)-sec(i)) > 0.02 || (sec(i)-sec(i+1)) > 0.02)
%         sec(i+1) = sec(i) + 0.1;
%         min(i+1) = min(i);
%         hour(i+1) = hour(i);
%         if(sec(i+1) > 60)
%             sec(i+1) = sec(i+1) - 60;
%             min(i+1) = min(i) + 1;
%             if(min(i+1) == 60)
%                 min(i+1) = min(i+1) - 60;
%                 hour(i+1) = hour(i+1) + 1;
%             end
%         end
% %     end
% fid = fopen('timestamps2.txt','a');
% fprintf(fid,'%4d-%2d-%02d %2d:%02d:%012.9f\n',year(i),mon(i),day(i),hour(i),min(i),sec(i));
% fclose(fid);
% end

figure
plot(sec,'o');
figure
plot(min,'*');
figure
plot(hour,'o');

