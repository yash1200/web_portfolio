class ModelExperience {
  String _date, _role, _company, _description;

  ModelExperience(this._date, this._role, this._company, this._description);

  String get description => _description;

  String get company => _company;

  String get role => _role;

  String get date => _date;
}
