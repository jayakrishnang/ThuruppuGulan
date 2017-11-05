class Dealer
  def initialize(match_id, player_id)
    @player_id = player_id
    @match = Match.where(id: match_id).first
    @deck_configs = YAML.safe_load(File.read(Rails.root.join('lib', 'yml', 'deck_config.yml')))
  end

  def deal
    @deck = @match.deck
    @cards = @deck.cards
    @round = @match.begin_round(@player_id)
    deal_cards_for_each_player
  end

  def create_decks
    @deck = Deck.create(match: @match)
    collect_all_cards(@deck)
  end

  private

  def deal_cards_for_each_player
    cards = @cards.shuffle
    2.times do
      @match.players.each do |player|
        4.times do
          card = cards.pop
          Hand.create(card: card, player: player, round: @round)
        end
      end
    end
  end

  def collect_all_cards(deck)
    @deck_configs['suits'].split(',').each do |suit|
      @deck_configs["Game#{@match.max_bid}X#{@match.no_of_players}"].split(',').each do |value|
        count = Card.where(suit: suit, value: value, deck_id: nil).limit(1).update_all(deck_id: deck.id)
        puts "#{suit} #{value} not found" if count.zero?
      end
    end
  end
end