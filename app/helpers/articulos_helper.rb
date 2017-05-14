module ArticulosHelper

  def gravatar2_for(articulo, size: 80)
    gravatar_id = Digest::MD5::hexdigest(articulo.name)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: articulo.name, class: "gravatar")
  end

end
