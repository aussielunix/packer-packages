class Packer < FPM::Cookery::Recipe
  homepage    'http://packer.io'

  name        'packer'
  arch        'amd64'
  version     '0.7.2'
  revision    '1'
  vendor      'aussielunix'

  description 'a tool for creating identical machine images for multiple platforms from a single source configuration.'
  section     'admin'

  source      "https://dl.bintray.com/mitchellh/packer/packer_#{version}_linux_amd64.zip"
  sha256      '2e0a7971d0df81996ae1db0fe04291fb39a706cc9e8a2a98e9fe735c7289379f'

  def build
  end

  def install
    mkdir_p opt
    cp_r builddir("packer_#{version}_linux_amd64"), opt('packer')
    etc('profile.d').install workdir('packer.profile'), 'packer.sh'
  end
end

