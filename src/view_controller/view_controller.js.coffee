# Base class for all controllers.
#
# @example How to subclass a controller
#   class MyController extends CB.ViewController
#     constructor: () ->
#     loadView: () ->
#       @view = new YourOwnView()
#
# @example To load a controller into window:
#   $(document).ready ->
#     controller = new MyController()
#     CB.Window.currentWindow().setRootViewController(controller)
#
class CB.ViewController
  # Construct a new controller.
  # This method does not take any parameters.
  #
  constructor: () ->

  @property "view"

  @property "title",
    get: -> document.title # @todo cache but not directly set
    set: (newTitle) -> document.title = newTitle

  isViewLoaded: () ->
    return !!@_view

  loadView: () ->
    @view = new CB.View
    return

  viewDidLoad: () ->

  viewWillAppear: () ->

  viewDidAppear: () ->

  viewWillDisappear: () ->

  viewDidDisappear: () ->

  viewWillLayoutSubviews: () ->

  viewDidLayoutSubviews: () ->

  @property "childViewControllers",
    get: ->
      @_childViewControllers ||= []
      @_childViewControllers

  @property "parentViewController"

  addChildViewController: (child) ->
    @childViewControllers.push(child)
    return

  removeFromParentViewController: () ->
    index = @parentViewController.childViewControllers.indexOf(this)
    index > -1 && @parentViewController.childViewControllers.splice(index, 1)
    @parentViewController = null
    return

  willMoveToParentViewController: (parent) ->

  didMoveToParentViewController: (parent) ->
