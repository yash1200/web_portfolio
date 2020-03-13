class ModelExperience {
  String _date, _role, _company, _description;

  ModelExperience(this._date, this._role, this._company, this._description);

  get description => _description;

  setDescription(value) {
    _description = value;
  }

  get company => _company;

  setCompany(value) {
    _company = value;
  }

  get role => _role;

  setRole(value) {
    _role = value;
  }

  String get date => _date;

  setDate(String value) {
    _date = value;
  }
}
