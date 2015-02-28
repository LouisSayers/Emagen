require "emagen/version"

module Emagen
  def for(name, domain)
    first_name, last_name = name.split
    first_initial, last_initial = first_name[0], last_name[0]
    patterns = %w{
      fn ln fnln fn.ln filn fi.ln fnli fn.li fili fi.li
      lnfn ln.fn lnfi ln.fi lifn li.fn lifi li.fi
      fn-ln fi-ln fn-li fi-li ln-fn ln-fi li-fi
      fn_ln fi_ln fn_li fi_li ln_fn ln_fi li_fi
    }

    patterns.map do |pattern|
      email_username = pattern
        .gsub('fn', first_name)
        .gsub('ln', last_name)
        .gsub('fi', first_initial)
        .gsub('li', last_initial)
      "#{email_username}@#{domain}"
    end
  end
  module_function :for
end
