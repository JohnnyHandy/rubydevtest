//= require action_cable
//= require_self
//= require_tree ./channels

(
  function() {
    this.App || (this.App = {});
    this.App.cable = ActionCable.createConsumer()
  }
).call(this);