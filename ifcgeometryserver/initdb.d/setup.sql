CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE ifcgeometry
(
  ifcmodel_id character varying NOT NULL,
  guid character varying NOT NULL,
  classname character varying,
  indices integer[],
  vertices float[],
  normals float[],
  face_colors float[][],
  geometry geometry,
  CONSTRAINT ifcgeometry_pkey PRIMARY KEY (ifcmodel_id, guid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE ifcgeometry
  OWNER TO postgres;