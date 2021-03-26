drop table budong_member

create table budong_member(
	id varchar2(10),
	pw varchar2(15),
	name varchar2(10)
)

select * from budong_member

insert into budong_member values('123','123','123')
insert into budong_member values('smart','123','smart')
insert into budong_member values('admin','admin','admin')


select * from BUDONG_MEMBER

alert delete budong_member where id = 'smhrd'

drop table junwall

create table junwall(
	junwall_num number,
	dong_name varchar2(50),
	build_year number,
	deposit varchar2(10),
	loyer varchar2(10),
	apt_name varchar2(100),
	year number,
	month number,
	day number,
	apt_size number,
	floor number
)

drop table maemae

create table maemae(
	maemae_num number,
	dong_name varchar2(50),
	price varchar2(10),
	build_year number,
	apt_name varchar2(100),
	year number,
	month number,
	day number,
	apt_size number,
	floor number
)

create table e_school(
	school_name varchar2(100),
	address varchar2(200),
	dong varchar2(20)
);

drop table e_school;


insert into e_school values('��ȭ�ʵ��б�','���ֱ����� �ϱ� ��ȭ���39���� 10', '��ȭ��');
insert into e_school values('�Ǳ��ʵ��б�','���ֱ����� �ϱ� ÷�ܿ��ŷ�108���� 86', '�ſ뵿');
insert into e_school values('����ʵ��б�','���ֱ����� �ϱ� �Ϲ����98���� 20', '��ϵ�');
insert into e_school values('����ʵ��б�','���ֱ����� ���� �󹫽ùη� 51', 'ġ��');
insert into e_school values('����ʵ��б�','���ֱ����� ���걸 ǳ���� 300', '�����');
insert into e_school values('�����ʵ��б�','���ֱ����� ���� �ϳ���� 710���� 19', '��õ��');
insert into e_school values('���ְ踲�ʵ��б�','���ֱ����� ���� �߾ӷ� 320', '�踲��');
insert into e_school values('���ֱ�õ�ʵ��б�','���ֱ����� ���� ����� 266', '�󼺵�');
insert into e_school values('���ֱ������б����ֺμ��ʵ��б�','���ֱ����� �ϱ� �ʹ���� 55', 'ǳ�⵿');
insert into e_school values('���ֱض��ʵ��б�','���ֱ����� ���� �󹫹����54����5', '���̵�');
insert into e_school values('���ֳ��ʵ��б�','���ֱ����� ���� ������5���� 20', '���µ�');
insert into e_school values('���ֳ��ʵ��б�','���ֱ����� ���� ��ȭ�� 481���� 7', '���굿');
insert into e_school values('���ִ뼺�ʵ��б�','���ֱ����� ���� ������ 2���� 8', '����');
insert into e_school values('���ֵ����ʵ��б�','���ֱ����� ���� �ع��� 16', '���굿');
insert into e_school values('���ֵ����ʵ��б�','���ֱ����� �ϱ� �Ϲ����8���� 21', '��ϵ�');
insert into e_school values('���ֵ��ʵ��б�','���ֱ����� �ϱ� ����� 527', '������');
insert into e_school values('���ֵ��ʵ��б���ȿ�б���','���ֱ����� �ϱ� ��ȿ���� 14-30', '��ȿ��');
insert into e_school values('���ֹ�ȭ�ʵ��б�','���ֱ����� �ϱ� ���շ� 135', '�ξϵ�');
insert into e_school values('���ֹ渲�ʵ��б�','���ֱ����� ���� ū�渲�� 20', '�渲��');
insert into e_school values('���ֹ���ʵ��б�','���ֱ����� ���� ������ 51', '��');
insert into e_school values('���ֺ����ʵ��б�','���ֱ����� ���� ���ֱ� 32', '�ֿ���');
insert into e_school values('���ֺ��ʵ��б�','���ֱ����� �ϱ� �ϼ��� 985', 'ȿ�ɵ�');
insert into e_school values('���ֻ���ʵ��б�','���ֱ����� ���� ����� 28', '�����');
insert into e_school values('���ֻ����ʵ��б�','���ֱ����� ���� ȸ���� 30', '�ֿ���');
insert into e_school values('���ֻ��ʵ��б�','���ֱ����� ���� ��ȣ��õ�� 67', '��ȣ��');
insert into e_school values('���ּ����ʵ��б�','���ֱ����� �ϱ� ������ 113', '�ӵ�');
insert into e_school values('���ּ����ʵ��б�','���ֱ����� �ϱ� ��ġ�� 263', '��ġ��');
insert into e_school values('���ּ����ʵ��б�','���ֱ����� ���� ������82���� 26', '������');
insert into e_school values('���ּ��ʵ��б�','���ֱ����� ���� ȭ��� 194���� 6', 'ȭ����');
insert into e_school values('���ּۿ��ʵ��б�','���ֱ����� ���� �۾Ϸ�73', '���ϵ�');
insert into e_school values('���ּ�â�ʵ��б�','���ֱ����� �ϱ� �ݳ��� 99', '�ϵ�');
insert into e_school values('���־絿�ʵ��б�','���ֱ����� ���� �濭�� 121���� 5', '�絿');
insert into e_school values('���־���ʵ��б�','���ֱ����� �ϱ� ����� 33', '��굿');
insert into e_school values('���ֿ���ʵ��б�','���ֱ����� �ϱ� ���ϴ��144���� 11', '�����');
insert into e_school values('���ֿ���ʵ��б�','���ֱ����� ���� ȭ��� 334', '��굿');
insert into e_school values('���ֿ���ʵ��б�','���ֱ����� �ϱ� �����63���� 67', '��굿');
insert into e_school values('���ֿ���ʵ��б�','���ֱ����� �ϱ� ������ 79-14', '��ϵ�');
insert into e_school values('���ֿ����ʵ��б�','���ֱ����� ���� ����� 116���� 6', '���굿');
insert into e_school values('��������ʵ��б�','���ֱ����� ���� ����� 533', '�����');
insert into e_school values('���������ʵ��б�','���ֱ����� ���� ������ 51���� 14', '�ֿ���');
insert into e_school values('�����߾��ʵ��б�','���ֱ����� ���� ������ 167', '�õ�');
insert into e_school values('���������ʵ��б�','���ֱ����� �ϱ� ����197���� 25', '���ﵿ');
insert into e_school values('���������ʵ��б�','���ֱ����� �ϱ� �ϼ��� 637', '���굿');
insert into e_school values('����ǳ���ʵ��б�','���ֱ����� �ϱ� ���շ�51����77', 'ǳ�⵿');
insert into e_school values('�����а��ʵ��б�','���ֱ����� ���� �縲�� 92', '�縲��');
insert into e_school values('�����п��ʵ��б�','���ֱ����� ���� ����� 181', '���');
insert into e_school values('����ȭ���ʵ��б�','���ֱ����� ���� ������4����146����10', 'ȭ����');
insert into e_school values('����ȿ���ʵ��б�','���ֱ����� ���� ȭ���7', '������');
insert into e_school values('����ȿ���ʵ��б�','���ֱ����� �ϱ� ����� 99', '���ﵿ');
insert into e_school values('�ݱ��ʵ��б�','���ֱ����� ���걸 �ӹ����165����60', '���');
insert into e_school values('�ݴ��ʵ��б�','���ֱ����� ���� ǳ���߾ӷ� 83', 'ǳ�ϵ�');
insert into e_school values('�ݺ��ʵ��б�','���ֱ����� ���� ��ȭ�� 115���� 22', '��ȣ��');
insert into e_school values('��ȣ�ʵ��б�','���ֱ����� ���� �ݺη�95���� 26-11', '���̵�');
insert into e_school values('����ʵ��б�','���ֱ����� ���걸 ��Ϸ�340���� 19', '���');
insert into e_school values('�����ʵ��б�','���ֱ����� �ϱ� ���ڷ� 5', '��ϵ�');
insert into e_school values('�����߾��ʵ��б�','���ֱ����� ���� ��ο��152���� 1', '������');
insert into e_school values('�����ʵ��б�','���ֱ����� ���걸 �����ܷ� 6', '���굿');
insert into e_school values('�����ʵ��б�','���ֱ����� ���걸 ����� 151-17', '�ϻ굿');
insert into e_school values('�����ʵ��б�','���ֱ����� �ϱ� �������� 7', '������');
insert into e_school values('�ξ��ʵ��б�','���ֱ����� �ϱ� ���Ƿ� 130', '�ξϵ�');
insert into e_school values('�����ʵ��б�','���ֱ����� ���� �����27', '��ȣ��');
insert into e_school values('�����ʵ��б�','���ֱ����� ���걸 ��÷� 219���� 104', '���');
insert into e_school values('��ȣ�ʵ��б�','���ֱ����� ���� ��ȭ�� 53', '��ȣ��');
insert into e_school values('�Ű��ʵ��б�','���ֱ����� �ϱ� �ʴ�� 25', '�Ű');
insert into e_school values('����ʵ��б�','���ֱ����� ���걸 ��÷� 153���� 20', '���');
insert into e_school values('�����ʵ��б�','���ֱ����� �ϱ� ��ӷ� 99', '��굿');
insert into e_school values('�����ʵ��б�','���ֱ����� ���� ������ 7', '������');
insert into e_school values('�����ʵ��б�','���ֱ����� �ϱ� ����� 66', '���ﵿ');
insert into e_school values('�����ʵ��б�','���ֱ����� �ϱ� �ɾȷ� 7', '���ﵿ');
insert into e_school values('�����ʵ��б�','���ֱ����� �ϱ� ��õ��169���� 7', '���ﵿ');
insert into e_school values('�����߾��ʵ��б�','���ֱ����� �ϱ� ����� 17', '���ﵿ');
insert into e_school values('�����ʵ��б�','���ֱ����� �ϱ� ��ӷ� 19', '���ﵿ');
insert into e_school values('�̻��ʵ��б�','���ֱ����� ���걸 ÷���߾ӷ� 181���� 70', '���赿');
insert into e_school values('�����ʵ��б�','���ֱ����� ���걸 ������ 323����', '���굿');
insert into e_school values('�����ʵ��б�','���ֱ����� �ϱ� ����������30���� 22', '���̵�');
insert into e_school values('�����ʵ��б�','���ֱ����� ���걸 ����� 57', '�����');
insert into e_school values('�����ʵ��б�','���ֱ����� ���� ���� �߾ӷ� 118�� 4', '������');
insert into e_school values('�ҷ��ʵ��б�','���ֱ����� ���� ������ 80����58-5', '�ҷε�');
insert into e_school values('����ʵ��б�','���ֱ����� ���걸 ��Ƶ����̱� 19-20', '��Ƶ�');
insert into e_school values('�������ʵ��б�','���ֱ����� ���� ��õ��7', '��õ��');
insert into e_school values('�������ʵ��б�','���ֱ����� ���� ȿõ�߾ӷ� 4', '�Ӿϵ�');
insert into e_school values('����ʵ��б�','���ֱ����� ���걸 ����� 9���� 36', '���赿');
insert into e_school values('�����ʵ��б�','���ֱ����� ���걸 ��÷� 22���� 11', '������');
insert into e_school values('�췹�ÿ��ʵ��б�','���ֱ����� ���� ����� 40-1', '�ſ���');
insert into e_school values('�ﰢ�ʵ��б�','���ֱ����� �ϱ� ���ط� 21', '�ﰢ��');
insert into e_school values('�ﵵ�ʵ��б�','���ֱ����� ���걸 ������ 9', '������');
insert into e_school values('�����ʵ��б�','���ֱ����� �ϱ� ��Ƿ�208���� 55', '�ξϵ�');
insert into e_school values('�����ʵ��б�','���ֱ����� ���걸 ǳ���� 125', '�漺��');
insert into e_school values('�����ʵ��б�','���ֱ����� ���� �󹫿�����38���� 36', '���̵�');
insert into e_school values('�����ʵ��б�','���ֱ����� �ϱ� ���׷� 590', '�ϰ');
insert into e_school values('�����ʵ��б�','���ֱ����� ���걸 �����߾ӷ� 11', '���ϵ�');
insert into e_school values('��â�ʵ��б�','���ֱ����� ���걸 ��â�� 35���� 67', '�Ű���');
insert into e_school values('�����ʵ��б�','���ֱ����� ���걸 ǳ���� 313����', '�����');
insert into e_school values('�����ʵ��б�','���ֱ����� ���� �л������� 16', 'ȭ����');
insert into e_school values('�ۿ��ʵ��б�','���ֱ����� ���걸 ��Ϸ� 158����49(1593-1)', '��굿');
insert into e_school values('�������ʵ��б�','���ֱ����� ���걸 ��Ϸ� 27���� 58', '������');
insert into e_school values('�������ʵ��б�','���ֱ����� ���걸 �󹫴�� 114', '���굿');
insert into e_school values('�����߾��ʵ��б�','���ֱ����� ���걸 ����� 653���� 90', '���̵�');
insert into e_school values('�����ʵ��б�','���ֱ����� ���걸 �۵��� 208���� 25', '���굿');
insert into e_school values('�����ʵ��б�','���ֱ����� ���� ����� 408', '���ϵ�');
insert into e_school values('�����ʵ��б�','���ֱ����� ���걸 ��â�� 105���� 9', '��â��');
insert into e_school values('�����ʵ��б�','���ֱ����� ���걸 ����� 143', '���ϵ�');
insert into e_school values('�Ű��ʵ��б�','���ֱ����� ���걸 �Ű��� 40���� 21', '�Ű���');
insert into e_school values('�ž��ʵ��б�','���ֱ����� ���� ǳ��2�� 56', 'ǳ�ϵ�');
insert into e_school values('�ſ��ʵ��б�','���ֱ����� �ϱ� ÷�ܿ��ŷ� 232-10', '�ſ뵿');
insert into e_school values('��â�ʵ��б�','���ֱ����� ���걸 ��â�� 162���� 10', '��â��');
insert into e_school values('�����ʵ��б�','���ֱ����� �ϱ� �ڶ����63���� 16', '��굿');
insert into e_school values('����ʵ��б�','���ֱ����� ���걸 ���� ������ 50', '��굿');
insert into e_school values('����ʵ��б�','���ֱ����� ���걸 ���̷� 122', '���̵�');
insert into e_school values('�����ʵ��б�','���ֱ����� �ϱ� �ϼ���229���� 47', '��굿');
insert into e_school values('�����ʵ��б�','���ֱ����� ���� ��ȭ�� 134���� 28', 'ȭ����');
insert into e_school values('��õ�ʵ��б�','���ֱ����� ���걸 ��÷� 123', '���');
insert into e_school values('�����ʵ��б�','���ֱ����� �ϱ� ��õ��55', '��ġ��');
insert into e_school values('��ġ�ʵ��б�','���ֱ����� �ϱ� ���׷� 290', '��ġ��');
insert into e_school values('����ʵ��б�','���ֱ����� �ϱ� �ӹ����1041���� 25', '�ſ뵿');
insert into e_school values('�����ʵ��б�','���ֱ����� �ϱ� ���ַ� 15', '�����');
insert into e_school values('��ʵ��б�','���ֱ����� ���걸 �ϳ���� 248-22', '���');
insert into e_school values('��ʵ��б�','���ֱ����� ���� ǳ�Ͽ�� 23���� 5', 'ǳ�ϵ�');
insert into e_school values('��õ�ʵ��б�','���ֱ����� ���� ġ��� 59', 'ġ��');
insert into e_school values('�����ʵ��б�','���ֱ����� ���걸 ÷�ܳ��̷� 83', '���赿');
insert into e_school values('�����ʵ��б�','���ֱ����� ���걸 ��������� 107', '���');
insert into e_school values('�����ʵ��б�','���ֱ����� ���걸 ����� 101', '�����');
insert into e_school values('�����ʵ��б�','���ֱ����� ���� �󹫹���� 16���� 6-10', '���̵�');
insert into e_school values('�����ʵ��б�','���ֱ����� ���� ������ 175���� 16', '������');
insert into e_school values('�����ʵ��б�','���ֱ����� ���� ����� 153', '���̵�');
insert into e_school values('�����ʵ��б�','���ֱ����� ���� ��Ƿ� 142', '�����');
insert into e_school values('�����ʵ��б�','���ֱ����� ���걸 ���Ϸ� 33���� 11', '���ϵ�');
insert into e_school values('�ϰ��ʵ��б�','���ֱ����� �ϱ� ���׷� 530', '�ϰ');
insert into e_school values('�ϵ��ʵ��б�','���ֱ����� �ϱ� �ϰ������� 45', '�ϰ');
insert into e_school values('�Ͻ��ʵ��б�','���ֱ����� �ϱ� �ϰ���� 187', '�ϰ');
insert into e_school values('�Ӱ��ʵ��б�','���ֱ����� ���걸 �ϸ��� 26', '�Ӱ');
insert into e_school values('����ʵ��б�','���ֱ����� ���걸 ����� 27', '�����');
insert into e_school values('����ʵ��б�','���ֱ����� ���� ȸ���� 27', '�ֿ���');
insert into e_school values('�����ʵ��б�','���ֱ����� ���걸 ÷�ܰ���� 104', '���赿');
insert into e_school values('�����ʵ��б�','���ֱ����� ���� ������ 144���� 8', '������');
insert into e_school values('�ֿ��ʵ��б�','���ֱ����� ���� ȭ��� 36', '�ֿ���');
insert into e_school values('�����ʵ��б�','���ֱ����� ���� ����� 37', '������');
insert into e_school values('�����ʵ��б�','���ֱ����� ���� ȿ��� 60���� 12', '��뵿');
insert into e_school values('�����ʵ��б�','���ֱ����� ���걸 ��÷�394���� 40-10', '�Ű���');
insert into e_school values('�����ʵ��б�','���ֱ����� ���� �������� 4�� 40', '������');
insert into e_school values('�����ʵ��б�','���ֱ����� ���� ������� 654���� 45', '������');
insert into e_school values('÷���ʵ��б�','���ֱ����� ���걸 �ӹ����727-20', '���');
insert into e_school values('ġ���ʵ��б�','���ֱ����� ���� ����ȭ�� 43', 'ġ��');
insert into e_school values('ū���ʵ��б�','���ֱ����� ���걸 ����� 115', '�Ű���');
insert into e_school values('�º��ʵ��б�','���ֱ����� �ϱ� û��� 33', '�����');
insert into e_school values('���ʵ��б�','���ֱ����� ���걸 �򵿷� 741', '����');
insert into e_school values('ǳ���ʵ��б�','���ֱ����� ���� ǳ���߾ӷ� 8', 'ǳ�ϵ�');
insert into e_school values('ǳ���ʵ��б�','���ֱ����� ���걸 ����� 258���� 53', '�Ű���');
insert into e_school values('�ϳ��߾��ʵ��б�','���ֱ����� ���걸 ������ 6���� 21-20', '���');
insert into e_school values('�ϳ��ʵ��б�','���ֱ����� ���걸 �ϳ���� 54���� 10', '�ϳ���');
insert into e_school values('�Ϲ��ʵ��б�','���ֱ����� �ϱ� �Ϲ��5���� 10', '�Ű');
insert into e_school values('�ѿ��ʵ��б�','���ֱ����� �ϱ� ������160���� 15', '������');
insert into e_school values('ȭ���ʵ��б�','���ֱ����� ���� ȭ�� �߾ӷ� 48', '��ȣ��');
insert into e_school values('ȭ�����ʵ��б�','���ֱ����� ���� ��ȭ�� 37', 'ȭ����');
insert into e_school values('ȿ���ʵ��б�','���ֱ����� ���� ��õ2�� 33����', '��õ��');
insert into e_school values('ȿõ�ʵ��б�','���ֱ����� ���� ȿ��2�� 70����', '���ڵ�');

select * from E_SCHOOL;

