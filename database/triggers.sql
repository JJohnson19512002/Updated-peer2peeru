CREATE OR REPLACE FUNCTION trg_capitalize_user_names()
RETURNS TRIGGER AS $$
BEGIN
  NEW.firstname := INITCAP(NEW.firstname);
  NEW.lastname  := INITCAP(NEW.lastname);
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS users_capitalize_names ON users;

CREATE TRIGGER users_capitalize_names
  BEFORE INSERT OR UPDATE
  ON users
  FOR EACH ROW
  EXECUTE FUNCTION trg_capitalize_user_names();