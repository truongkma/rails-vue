# Rails-vue
### About

Rails 3.1+ asset-pipeline gem to provide Vue.js

### Package versions
- vue v2.6.7
- vue-router v3.0.2
- vue-resource v1.5.1
- vuex v3.1.0

### Usage
1. Add gem
```ruby
gem 'rails-vue'
```
2. run: `bundle install`
3. add to `application.js`
```js
//= require vue
//= require vue-router (optional)
//= require vue-resource (optional)
//= require vuex (optional)
```
4. add to head of view layout (example: `layouts/application.html.erb`)
```
<%= yield(:vue_assets) %>
```
5. Render it in Rails view:
```
<%= vue_component("component-name", { message: "Hello world" }, {class: "classtest"}) %>
```

### optional of helper
`vue_component(component_name, props_data, html_options)`
