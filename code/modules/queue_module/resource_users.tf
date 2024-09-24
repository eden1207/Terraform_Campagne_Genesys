resource "genesyscloud_user" "alexis_user1" {
  email       = "corben.dallas@example.com"
  name        = "Corben Dallas"
  password    = "PASSWORD123!"
  division_id = var.DIVISION_ID
  state       = "active"
  routing_skills {
    skill_id    = genesyscloud_routing_skill.BILINGUE_FR.id
    proficiency = 1
  }
  routing_utilization {
    call {
      maximum_capacity = var.MAX_CALL_CAPACITY
      include_non_acd  = true
    }
    callback {
      maximum_capacity          = var.MAX_CALLBACK_CAPACITY
      include_non_acd           = false
      interruptible_media_types = ["call", "email"]
    }
    chat {
      maximum_capacity          = var.MAX_CHAT_CAPACITY
      include_non_acd           = false
      interruptible_media_types = ["call"]
    }
    email {
      maximum_capacity          = var.MAX_EMAIL_CAPACITY
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
    }
    message {
      maximum_capacity          = var.MAX_MSG_CAPACITY
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
    }
  }
}

resource "genesyscloud_user" "alexis_user2" {
  email       = "ruby.rhode@example.com"
  name        = "Ruby Rhode"
  password    = "PASSWORD456!"
  division_id = var.DIVISION_ID
  state       = "active"
  routing_skills {
    skill_id    = genesyscloud_routing_skill.BILINGUE_FR.id
    proficiency = 1
  }
  routing_utilization {
    call {
      maximum_capacity = var.MAX_CALL_CAPACITY
      include_non_acd  = true
    }
    callback {
      maximum_capacity          = var.MAX_CALLBACK_CAPACITY
      include_non_acd           = false
      interruptible_media_types = ["call", "email"]
    }
    chat {
      maximum_capacity          = var.MAX_CHAT_CAPACITY
      include_non_acd           = false
      interruptible_media_types = ["call"]
    }
    email {
      maximum_capacity          = var.MAX_EMAIL_CAPACITY
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
    }
    message {
      maximum_capacity          = var.MAX_MSG_CAPACITY
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
    }
  }
}

resource "genesyscloud_user" "alexis_user3" {
  email       = "baby.ray@example.com"
  name        = "Baby Ray"
  password    = "PASSWORD678!"
  division_id = var.DIVISION_ID
  state       = "active"
  routing_skills {
    skill_id    = genesyscloud_routing_skill.BILINGUE_FR.id
    proficiency = 1
  }
  routing_utilization {
    call {
      maximum_capacity = var.MAX_CALL_CAPACITY
      include_non_acd  = true
    }
    callback {
      maximum_capacity          = var.MAX_CALLBACK_CAPACITY
      include_non_acd           = false
      interruptible_media_types = ["call", "email"]
    }
    chat {
      maximum_capacity          = var.MAX_CHAT_CAPACITY
      include_non_acd           = false
      interruptible_media_types = ["call"]
    }
    email {
      maximum_capacity          = var.MAX_EMAIL_CAPACITY
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
    }
    message {
      maximum_capacity          = var.MAX_MSG_CAPACITY
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
    }
  }
}

resource "genesyscloud_user" "alexis_user4" {
  email       = "roy.vonbacon@example.com"
  name        = "Roy Von Bacon"
  password    = "PASSWORD912!"
  division_id = var.DIVISION_ID
  state       = "active"
  routing_skills {
    skill_id    = genesyscloud_routing_skill.BILINGUE_FR.id
    proficiency = 1
  }
  routing_utilization {
    call {
      maximum_capacity = var.MAX_CALL_CAPACITY
      include_non_acd  = true
    }
    callback {
      maximum_capacity          = var.MAX_CALLBACK_CAPACITY
      include_non_acd           = false
      interruptible_media_types = ["call", "email"]
    }
    chat {
      maximum_capacity          = var.MAX_CHAT_CAPACITY
      include_non_acd           = false
      interruptible_media_types = ["call"]
    }
    email {
      maximum_capacity          = var.MAX_EMAIL_CAPACITY
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
    }
    message {
      maximum_capacity          = var.MAX_MSG_CAPACITY
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
    }
  }
}