require "sysinfo/base"
require "sysinfo/core"
require "sysinfo/cpu"
require "sysinfo/load"
require "sysinfo/traffic"
require "sysinfo/bandwidth"
require "sysinfo/storage"
require "sysinfo/memory"
require "sysinfo/swap"

module Vidibus
  module Sysinfo
    class << self

      # Returns number of cpu cores.
      def core
        Core.call
      end

      # Returns CPU utilization in percent.
      def cpu
        Cpu.call
      end

      # Returns system load, divided by number of CPU cores.
      def load
        Load.call
      end

      # Returns total traffic of this month in gigabytes.
      def traffic
        Traffic.call
      end

      # Returns currently used bandwith in MBit/s.
      # Provide seconds to improve measurement.
      # The higher the seconds, the more accurate are the results.
      def bandwidth(seconds = 1)
        Bandwidth.call(seconds)
      end

      # Returns consumed storage in gigabytes.
      def storage
        Storage.call
      end

      # Returns used memory in megabytes.
      def memory
        Memory.call
      end

      # Returns used swap in megabytes.
      def swap
        Swap.call
      end
    end
  end
end
