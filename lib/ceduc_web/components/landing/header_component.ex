defmodule CeducWeb.Landing.HeaderComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div class="w-full fixed top-0 left-0 z-40">
      <div class="w-full flex bg-prin p-2">
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
      <div class="w-full flex bg-prin_1">
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
                            href="/oferta-academica/licenciatura"
                            class="block px-4 py-2 hover:bg-prin_1"
                          >
                            Licenciaturas
                          </a>
                        </li>
                        <li>
                          <a
                            href="/oferta-academica/licenciatura"
                            class="block px-4 py-2 hover:bg-prin_1"
                          >
                            Ingenierías
                          </a>
                        </li>
                        <li>
                          <a
                            href="/oferta-academica/licenciatura"
                            class="block px-4 py-2 hover:bg-prin_1"
                          >
                            Diseño
                          </a>
                        </li>
                        <li>
                          <a
                            href="/oferta-academica/licenciatura"
                            class="block px-4 py-2 hover:bg-prin_1"
                          >
                            Más...
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
            <a href="/" class="cursor-pointer whitespace-nowrap py-3 hover:bg-prin w-48">Admisión</a>
            <a href="/blog" class="cursor-pointer whitespace-nowrap py-3 hover:bg-prin w-48">Blog</a>
            <a href="#contact" class="cursor-pointer whitespace-nowrap py-3 hover:bg-prin w-48">
              Contacto
            </a>
          </div>
        </div>
      </div>
    </div>
    """
  end

  def mount(socket) do
    {:ok, assign(socket, sections: sections(0))}
  end

  def update(attrs, socket) do
    {:ok, assign(socket, sections: sections(attrs.section_id))}
  end

  defp sections(id) do
    []
  end
end
