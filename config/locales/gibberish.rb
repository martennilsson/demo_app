I18n.backend.store_translations :'gibberish', {
  # date and time formats
  :date => {
    :formats => {
      :default      => "%Y-%m-%d (ish)",
      :short        => "%e %b (ish)",
      :long         => "%B %e, %Y (ish)",
      :long_ordinal => lambda { |date| "%B #{date.day}ish, %Y" },
      :only_day     => lambda { |date| "#{date.day}ish"}
    },
    :day_names => %w(Sunday-ish Monday-ish Tuesday-ish Wednesday-ish Thursday-ish Friday-ish Saturday-ish),
    :abbr_day_names => %w(Sun-i Mon-i Tue-i Wed-i Thu-i Fri-i Sat-i),
    :month_names => [nil] + %w(January-ish February-ish March-ish April-ish May-ish June-ish
                               July-ish August-ish September-ish October-ish November-rish December-ish),
    :abbr_month_names => [nil] + %w(Jan-i Feb-i Mar-i Apr-i May-i Jun-i Jul-i Aug-i Sep-i Oct-i Nov-i Dec-i),
    :order => [:day, :month, :year]
  },
  :time => {
    :formats => {
      :default      => "%a %b %d %H:%M:%S %Z %Y (ish)",
      :time         => "%H:%M (ish)",
      :short        => "%d %b %H:%M (ish)",
      :long         => "%B %d, %Y %H:%M (ish)",
      :long_ordinal => lambda { |time| "%B #{time.day}ish, %Y %H:%M" },
      :only_second  => "%S (ish)"
    },
    :am => '',
    :pm => ''
  },

  # date helper distance in words
  :datetime => {
    :distance_in_words => {
      :half_a_minute       => 'a half-ish minute',
      :less_than_x_seconds => ['less than 1 second', '{{count}}ish seconds'],
      :x_seconds           => ['1 second', '{{count}}ish seconds'],
      :less_than_x_minutes => ['less than a minute', '{{count}}ish minutes'],
      :x_minutes           => ['1 minute', '{{count}}ish minutes'],
      :about_x_hours       => ['about 1 hour', '{{count}}ish hours'],
      :x_days              => ['1 day', '{{count}}ish days'],
      :about_x_months      => ['about 1 month', '{{count}}ish months'],
      :x_months            => ['1 month', '{{count}}ish months'],
      :about_x_years       => ['about 1 year', '{{count}}ish year'],
      :over_x_years        => ['over 1 year', '{{count}}ish years']
    }
  },

  # numbers
  :number => {
    :format => {
      :precision => 3,
      :separator => ',',
      :delimiter => '.'
    },
    :currency => {
      :format => {
        :unit => 'Gib-$',
        :precision => 2,
        :format => '%n %u'
      }
    }
  },

  # Active Record
  :active_record => {
    :error => {
      :header_message => ["Couldn't save this {{object_name}}: 1 error", "Couldn't save this {{object_name}}: {{count}} errors."],
      :message => "Please check the following fields, dude:"
    }
  },
  :active_record => {
    :error_messages => {
      :inclusion => "ain't included in the list",
      :exclusion => "ain't available",
      :invalid => "ain't valid",
      :confirmation => "don't match its confirmation",
      :accepted  => "gotta be accepted",
      :empty => "gotta be given",
      :blank => "gotta be given",
      :too_long => "is too long-ish (no more than {{count}} characters)",
      :too_short => "is too short-ish (no less than {{count}} characters)",
      :wrong_length => "ain't got the right length (gotta be {{count}} characters)",
      :taken => "ain't available",
      :not_a_number => "ain't a number",
      :greater_than => "gotta be greater than {{count}}",
      :greater_than_or_equal_to => "gotta be greater than or equal to {{count}}",
      :equal_to => "gotta be equal to {{count}}",
      :less_than => "gotta be less than {{count}}",
      :less_than_or_equal_to => "gotta be less than or equal to {{count}}",
      :odd => "gotta be odd",
      :even => "gotta be even"
    }
  }
}