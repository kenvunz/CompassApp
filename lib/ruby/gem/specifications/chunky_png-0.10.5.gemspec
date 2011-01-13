# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{chunky_png}
  s.version = "0.10.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Willem van Bergen"]
  s.date = %q{2010-10-22}
  s.description = %q{    This pure Ruby library can read and write PNG images without depending on an external 
    image library, like RMagick. It tries to be memory efficient and reasonably fast.
    
    It supports reading and writing all PNG variants that are defined in the specification, 
    with one limitation: only 8-bit color depth is supported. It supports all transparency, 
    interlacing and filtering options the PNG specifications allows. It can also read and 
    write textual metadata from PNG files. Low-level read/write access to PNG chunks is
    also possible.
    
    This library supports simple drawing on the image canvas and simple operations like
    alpha composition and cropping. Finally, it can import from and export to RMagick for 
    interoperability.
    
    Also, have a look at OilyPNG at http://github.com/wvanbergen/oily_png. OilyPNG is a 
    drop in mixin module that implements some of the ChunkyPNG algorithms in C, which 
    provides a massive speed boost to encoding and decoding.
}
  s.email = ["willem@railsdoctors.com"]
  s.extra_rdoc_files = ["README.rdoc", "BENCHMARKS.rdoc"]
  s.files = [".gitignore", "BENCHMARKS.rdoc", "Gemfile", "Gemfile.lock", "LICENSE", "README.rdoc", "Rakefile", "benchmarks/decoding_benchmark.rb", "benchmarks/encoding_benchmark.rb", "benchmarks/filesize_benchmark.rb", "chunky_png.gemspec", "lib/chunky_png.rb", "lib/chunky_png/canvas.rb", "lib/chunky_png/canvas/adam7_interlacing.rb", "lib/chunky_png/canvas/drawing.rb", "lib/chunky_png/canvas/operations.rb", "lib/chunky_png/canvas/png_decoding.rb", "lib/chunky_png/canvas/png_encoding.rb", "lib/chunky_png/canvas/stream_exporting.rb", "lib/chunky_png/canvas/stream_importing.rb", "lib/chunky_png/chunk.rb", "lib/chunky_png/color.rb", "lib/chunky_png/datastream.rb", "lib/chunky_png/image.rb", "lib/chunky_png/palette.rb", "lib/chunky_png/rmagick.rb", "spec/chunky_png/canvas/adam7_interlacing_spec.rb", "spec/chunky_png/canvas/drawing_spec.rb", "spec/chunky_png/canvas/operations_spec.rb", "spec/chunky_png/canvas/png_decoding_spec.rb", "spec/chunky_png/canvas/png_encoding_spec.rb", "spec/chunky_png/canvas_spec.rb", "spec/chunky_png/color_spec.rb", "spec/chunky_png/datastream_spec.rb", "spec/chunky_png/image_spec.rb", "spec/chunky_png/rmagick_spec.rb", "spec/chunky_png_spec.rb", "spec/resources/16x16_interlaced.png", "spec/resources/16x16_non_interlaced.png", "spec/resources/adam7.png", "spec/resources/clock.png", "spec/resources/clock_base.png", "spec/resources/clock_flip_horizontally.png", "spec/resources/clock_flip_vertically.png", "spec/resources/clock_mask.png", "spec/resources/clock_mask_updated.png", "spec/resources/clock_rotate_180.png", "spec/resources/clock_rotate_left.png", "spec/resources/clock_rotate_right.png", "spec/resources/clock_stubbed.png", "spec/resources/clock_updated.png", "spec/resources/composited.png", "spec/resources/cropped.png", "spec/resources/damaged_chunk.png", "spec/resources/damaged_signature.png", "spec/resources/gray_10x10.png", "spec/resources/gray_10x10_grayscale.png", "spec/resources/gray_10x10_grayscale_alpha.png", "spec/resources/gray_10x10_indexed.png", "spec/resources/gray_10x10_truecolor.png", "spec/resources/gray_10x10_truecolor_alpha.png", "spec/resources/indexed_4bit.png", "spec/resources/lines.png", "spec/resources/operations.png", "spec/resources/pixelstream.rgb", "spec/resources/pixelstream.rgba", "spec/resources/pixelstream_best_compression.png", "spec/resources/pixelstream_fast_rgba.png", "spec/resources/pixelstream_reference.png", "spec/resources/rect.png", "spec/resources/replaced.png", "spec/resources/text_chunk.png", "spec/resources/transparent_gray_10x10.png", "spec/resources/ztxt_chunk.png", "spec/spec_helper.rb", "tasks/benchmarks.rake", "tasks/github-gem.rake"]
  s.homepage = %q{http://wiki.github.com/wvanbergen/chunky_png}
  s.rdoc_options = ["--title", "chunky_png", "--main", "README.rdoc", "--line-numbers", "--inline-source"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Pure ruby library for read/write, chunk-level access to PNG files}
  s.test_files = ["spec/chunky_png/canvas/adam7_interlacing_spec.rb", "spec/chunky_png/canvas/drawing_spec.rb", "spec/chunky_png/canvas/operations_spec.rb", "spec/chunky_png/canvas/png_decoding_spec.rb", "spec/chunky_png/canvas/png_encoding_spec.rb", "spec/chunky_png/canvas_spec.rb", "spec/chunky_png/color_spec.rb", "spec/chunky_png/datastream_spec.rb", "spec/chunky_png/image_spec.rb", "spec/chunky_png/rmagick_spec.rb", "spec/chunky_png_spec.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.0"])
  end
end