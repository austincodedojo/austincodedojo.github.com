task :default => :site

task :site do |t|
    sh 'jekyll'
end

task :clean do |t|
    sh 'rm -rf _site'
end

task :server do |t|
    sh 'jekyll --server'
end
