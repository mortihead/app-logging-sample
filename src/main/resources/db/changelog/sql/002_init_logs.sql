CREATE TABLE  logs (
	id serial NOT NULL,
	created_at timestamptz NULL,
	created_by varchar(256) null,
	"class" varchar(100) NULL,
	method varchar(512) null,
	"level" varchar(10) NULL,
	event_type varchar(256) NULL,
	message text NULL,
	"exception" text NULL,
	CONSTRAINT logs_pkey PRIMARY KEY (id)
);
COMMENT ON TABLE  logs IS 'События приложения';


-- Комментарии к столбцам таблицы  logs
COMMENT ON COLUMN  logs.id IS 'Уникальный идентификатор записи в таблице (автоинкремент).';
COMMENT ON COLUMN  logs.created_at IS 'Дата и время создания записи в формате UTC.';
COMMENT ON COLUMN  logs.created_by IS 'Идентификатор пользователя или системы, создавшей запись.';
COMMENT ON COLUMN  logs."class" IS 'Класс или компонент приложения, в котором произошло событие.';
COMMENT ON COLUMN  logs."level" IS 'Уровень события';
COMMENT ON COLUMN  logs.event_type IS 'Тип события или категория логируемого действия.';
COMMENT ON COLUMN  logs.message IS 'Текстовое сообщение, описывающее событие или ошибку.';
