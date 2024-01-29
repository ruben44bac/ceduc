defmodule CeducWeb.Landing.HeaderComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div class="w-full fixed top-0 left-0 z-40">
      <div class="w-full hidden md:flex bg-prin p-2">
        <div class="w-10/12 inline-flex items-center mx-auto py-2 text-white text-sm font-medium">
          <div class="w-1/3">
            <a href="/">
              <img class="w-32 h-auto mr-auto md:mx-0" src="/images/logo_white_down.png" />
            </a>
          </div>
          <div class="w-1/3">
            <div class="relative">
              <div class="absolute inset-y-0 start-0 flex items-center ps-3.5 pointer-events-none">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="w-4 h-4 text-gray-500 dark:text-gray-400"
                  fill="currentColor"
                  viewBox="0 0 512 512"
                >
                  <path d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z" />
                </svg>
              </div>
              <input
                type="text"
                id="input-group-1"
                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full ps-10 p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                placeholder="Licenciatura..."
              />
            </div>
          </div>
          <div class="w-1/3">
            <div class="w-full inline-flex items-center">
              <a
                href="/becas"
                class="px-2 hover:bg-prin_1 inline-flex items-center py-2 rounded-lg ml-auto"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="w-4 h-4"
                  fill="currentColor"
                  viewBox="0 0 384 512"
                >
                  <path d="M64 0C28.7 0 0 28.7 0 64V448c0 35.3 28.7 64 64 64H320c35.3 0 64-28.7 64-64V64c0-35.3-28.7-64-64-64H64zM96 64H288c17.7 0 32 14.3 32 32v32c0 17.7-14.3 32-32 32H96c-17.7 0-32-14.3-32-32V96c0-17.7 14.3-32 32-32zm32 160a32 32 0 1 1 -64 0 32 32 0 1 1 64 0zM96 352a32 32 0 1 1 0-64 32 32 0 1 1 0 64zM64 416c0-17.7 14.3-32 32-32h96c17.7 0 32 14.3 32 32s-14.3 32-32 32H96c-17.7 0-32-14.3-32-32zM192 256a32 32 0 1 1 0-64 32 32 0 1 1 0 64zm32 64a32 32 0 1 1 -64 0 32 32 0 1 1 64 0zm64-64a32 32 0 1 1 0-64 32 32 0 1 1 0 64zm32 64a32 32 0 1 1 -64 0 32 32 0 1 1 64 0zM288 448a32 32 0 1 1 0-64 32 32 0 1 1 0 64z" />
                </svg>
                <span class="ml-2">Becas</span>
              </a>

              <a
                href="tel:5512345678"
                class="px-2 hover:bg-prin_1 inline-flex items-center py-2 rounded-lg ml-2"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="w-4 h-4"
                  fill="currentColor"
                  viewBox="0 0 384 512"
                >
                  <path d="M16 64C16 28.7 44.7 0 80 0H304c35.3 0 64 28.7 64 64V448c0 35.3-28.7 64-64 64H80c-35.3 0-64-28.7-64-64V64zM224 448a32 32 0 1 0 -64 0 32 32 0 1 0 64 0zM304 64H80V384H304V64z" />
                </svg>
                <span class="ml-2">55 1234 5678</span>
              </a>
            </div>
          </div>
        </div>
      </div>
      <div class="w-full hidden md:flex bg-prin_1">
        <div class="w-10/12 inline-flex items-center mx-auto">
          <div class="mx-auto w-auto md:grid gap-1 grid-cols-4 text-white text-center text-sm font-bold hidden">
            <div class="relative group/item w-48">
              <button
                id="dropdownHoverButton"
                data-dropdown-toggle="dropdownHover"
                data-dropdown-trigger="hover"
                class="cursor-pointer whitespace-nowrap py-3 hover:bg-prin group-hover/item:bg-prin w-full"
                type="button"
              >
                Oferta académica
              </button>
              <div
                id="dropdownHover"
                class="z-10 hidden group-hover/item:block absolute top-0 left-0 mt-11 bg-prin_1 divide-y divide-gray-100 rounded-b-lg shadow w-48"
              >
                <ul
                  class="py-2 text-sm text-gray-700 dark:text-gray-200"
                  aria-labelledby="dropdownHoverButton"
                >
                  <li>
                    <a href="/oferta-academica/preparatoria" class="block px-4 py-2 hover:bg-prin">
                      Preparatoria
                    </a>
                  </li>

                  <li class="group/lic">
                    <a
                      href="/oferta-academica/licenciatura"
                      class=" block px-4 py-2 group-hover/lic:bg-prin "
                    >
                      Licenciatura
                    </a>
                    <div
                      id="doubleDropdown"
                      class="z-10 mt-10 absolute w-48 hidden group-hover/lic:block bg-prin top-0 right-0 -mr-48 divide-y divide-gray-100 rounded-lg shadow"
                    >
                      <ul
                        class="py-2 text-sm text-gray-700 dark:text-gray-200"
                        aria-labelledby="doubleDropdownButton"
                      >
                        <li>
                          <a
                            href="/oferta-academica/licenciatura/1"
                            class="block px-4 py-2 hover:bg-prin_1"
                          >
                            Ciencias Sociales
                          </a>
                        </li>
                        <li>
                          <a
                            href="/oferta-academica/licenciatura/2"
                            class="block px-4 py-2 hover:bg-prin_1"
                          >
                            Negocios
                          </a>
                        </li>
                        <li>
                          <a
                            href="/oferta-academica/licenciatura/3"
                            class="block px-4 py-2 hover:bg-prin_1"
                          >
                            Diseño, Arte y Arquitectura
                          </a>
                        </li>
                        <li>
                          <a
                            href="/oferta-academica/licenciatura/4"
                            class="block px-4 py-2 hover:bg-prin_1"
                          >
                            Ingeniería
                          </a>
                        </li>
                      </ul>
                    </div>
                  </li>
                  <li>
                    <a href="/oferta-academica/maestria" class="block px-4 py-2 hover:bg-prin">
                      Maestría
                    </a>
                  </li>
                  <li>
                    <a href="/oferta-academica/doctorado" class="block px-4 py-2 hover:bg-prin">
                      Doctorado
                    </a>
                  </li>
                </ul>
              </div>
            </div>
            <a href="/about" class="cursor-pointer whitespace-nowrap py-3 hover:bg-prin w-48">
              CEDUC
            </a>
            <a href="/blog" class="cursor-pointer whitespace-nowrap py-3 hover:bg-prin w-48">Blog</a>
            <a href="#contact" class="cursor-pointer whitespace-nowrap py-3 hover:bg-prin w-48">
              Contacto
            </a>
          </div>
        </div>
      </div>
      <div class="w-full flex md:hidden bg-prin p-2">
        <div class="w-11/12 inline-flex items-center mx-auto py-2 text-white text-sm font-medium">
          <div class="w-1/4">
            <a href="/">
              <img class="w-12 h-12 mr-auto md:mx-0" src="/images/ceduc_logo.png" />
            </a>
          </div>
          <div class="w-1/2">
            <div class="relative">
              <div class="absolute inset-y-0 start-0 flex items-center ps-3.5 pointer-events-none">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="w-4 h-4 text-gray-500 dark:text-gray-400"
                  fill="currentColor"
                  viewBox="0 0 512 512"
                >
                  <path d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z" />
                </svg>
              </div>
              <input
                type="text"
                id="input-group-1"
                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full ps-10 p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                placeholder="Licenciatura..."
              />
            </div>
          </div>
          <div class="w-1/4 flex">
            <button
              phx-click="show_menu"
              phx-target={@myself}
              class="ml-auto w-8 h-8 inline-flex items-center"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="w-6 h-6 text-white mx-auto"
                fill="currentColor"
                viewBox="0 0 448 512"
              >
                <path d="M0 96C0 78.3 14.3 64 32 64H416c17.7 0 32 14.3 32 32s-14.3 32-32 32H32C14.3 128 0 113.7 0 96zM0 256c0-17.7 14.3-32 32-32H416c17.7 0 32 14.3 32 32s-14.3 32-32 32H32c-17.7 0-32-14.3-32-32zM448 416c0 17.7-14.3 32-32 32H32c-17.7 0-32-14.3-32-32s14.3-32 32-32H416c17.7 0 32 14.3 32 32z" />
              </svg>
            </button>
          </div>
        </div>
        <%= if @show_menu do %>
          <div class="w-full fixed top-0 left-0 h-screen z-50 backdrop-blur-md bg-black/40">
            <div class="w-full p-4 text-white font-bold">
              <div class="w-full flex">
                <div class="w-1/4"></div>
                <a href="/" class="mx-auto w-1/2 flex">
                  <img class="w-32 h-auto mx-auto" src="/images/logo_white_down.png" />
                </a>
                <div class="w-1/4 flex">
                  <button
                    phx-click="close_menu"
                    phx-target={@myself}
                    class="ml-auto w-8 h-8 inline-flex items-center"
                  >
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="w-6 h-6 text-white mx-auto"
                      fill="currentColor"
                      viewBox="0 0 384 512"
                    >
                      <path d="M342.6 150.6c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L192 210.7 86.6 105.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3L146.7 256 41.4 361.4c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0L192 301.3 297.4 406.6c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3L237.3 256 342.6 150.6z" />
                    </svg>
                  </button>
                </div>
              </div>
              <a href="/oferta-academica/licenciatura" class="block px-4 py-2 text-xl mt-10">
                Oferta académica
              </a>
              <a href="/oferta-academica/preparatoria" class="block pl-8 py-2">
                Preparatoria
              </a>
              <a href="/oferta-academica/licenciatura" class="block pl-8 py-2">
                Licenciatura
              </a>
              <a href="/oferta-academica/licenciatura/1" class="block pl-12 py-2 text-sm">
                Ciencias Sociales
              </a>
              <a href="/oferta-academica/licenciatura/2" class="block pl-12 py-2 text-sm">
                Negocios
              </a>
              <a href="/oferta-academica/licenciatura/3" class="block pl-12 py-2 text-sm">
                Diseño, Arte y Arquitectura
              </a>
              <a href="/oferta-academica/licenciatura/4" class="block pl-12 py-2 text-sm">
                Ingeniería
              </a>
              <a href="/oferta-academica/maestria" class="block pl-8 py-2">
                Maestría
              </a>
              <a href="/oferta-academica/doctorado" class="block pl-8 py-2">
                Doctorado
              </a>
              <a href="/about" class="block px-4 py-2 text-xl">
                CEDUC
              </a>
              <a href="/blog" class="block px-4 py-2 text-xl">
                Blog
              </a>
              <a
                phx-click="close_menu"
                phx-target={@myself}
                href="#contact"
                class="block px-4 py-2 text-xl"
              >
                Contacto
              </a>
            </div>
          </div>
        <% end %>
      </div>
    </div>
    """
  end

  def mount(socket) do
    {:ok, assign(socket, show_menu: false, sections: sections(0))}
  end

  def update(attrs, socket) do
    {:ok, assign(socket, sections: sections(attrs.section_id))}
  end

  def handle_event("show_menu", _params, socket) do
    {:noreply, assign(socket, show_menu: true)}
  end

  def handle_event("close_menu", _params, socket) do
    {:noreply, assign(socket, show_menu: false)}
  end

  defp sections(_id) do
    []
  end
end
