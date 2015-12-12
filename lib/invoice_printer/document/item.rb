require 'invoice_printer/document'

module InvoicePrinter
  class Document
    # Line items for InvoicePrinter::Document
    #
    # Example:
    #
    #  item = InvoicePrinter::Document::Item.new(
    #    name: 'UX consultation',
    #    number: '4',
    #    unit: 'hours',
    #    price: '$ 25',
    #    amount: '$ 100'
    #  )
    #
    # +amount+ should equal the +number+ times +price+,
    # but this is not enforced.
    class Item
      attr_accessor :name,
                    :number,
                    :unit,
                    :price,
                    :amount

      def initialize(name: nil,
                     number: nil,
                     unit: nil,
                     price: nil,
                     amount: nil)
        @name = name
        @number = number
        @unit = unit
        @price = price
        @amount = amount
      end
    end
  end
end
