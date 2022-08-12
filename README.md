# Huckberry Technical Challenge

## Getting Started

You'll need the following installed on your machine to setup and run the
project.

System Dependencies:

- Ruby version 3.0.4
- Node version 18
- [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli)

To get started, run:

```
$ bin/setup
```

Start the server: `heroku local -f Procfile.dev`.

Navigate to `localhost:3000` and you should see the following text:

```
Huckberry
TODO challenge questions!
```

### Usage

This repository was created using `rails new` on Rails 7 and generally follows
Rails-y conventions. Feel free to update or modify any existing code.

You'll find the `Product` model in `app/models` and the controller for the
product API in `app/controllers/api`.

The only provided endpoint is `GET /api/products.json` which returns a JSON
Array of product objects. The JSON is generated by the [`blueprinter`](https://github.com/procore/blueprinter)
gem.

## Instructions

Spend up to 3 hours working on the challenge. It is more important that you
submit readable, maintainable, and low-error code that runs instead of
attempting to complete the entire challenge. We recommend approaching each
part of the challenge one by one, rather than attempting to complete all parts
at once.

We request that you do not copy code in whole from any source including a
website, book, or friend/colleague to complete this challenge. You may reference
and modify code from sources as if you are working in a professional environment
where software licensing and copyright restrictions must be respected. For
example, generally, code on Stack Overflow legally requires attribution.

### Evaluation

While we will be reading through your code to evaluate it, your work should also
successfully run. We will be testing the server on the current version of
Mac OS. We will be testing the frontend using the current version of Chrome on
Mac OS and the current version of Safari on iOS.

You will be evaluated on:

**Demonstrated Proficiency with Ruby and JavaScript**

- Each of these languages have different styles and patterns. We would like to
  see you have a strong grasp of the differences around each of these to create
  code that would be familiar to a Ruby only developer or a JavaScript only
  developer.

**Demonstrated Proficiency with Rails and/or React**

- Both of these tools have common patterns and preferences unique to the
  respective framework. We'd like to see that you understand these and know
  when to use these patterns and when to break them.

**Robustness and Maintainability**

- Your code should have few, if any, errors and be able to handle a reasonable
  number of edge cases.
- Your code should be relatively easy to maintain – meaning its purpose is
  clear, it is readable, and another developer would be able to modify it
  without undue burden.

**Completness**

- Each challenge has multiple parts, and it's not expected that you finish
  every part. We would like to see at least a couple of complete parts.
- As a deciding factor, we may also evalute your solution on its user
  experience.

### Submission

Please send a `.zip` file of this directory, with your code changes, to Josh
Hepworth. Please exclude any dependency or generated files from the
`.zip`. We recommend using `git archive`:

```sh
git archive --format zip -o ./archive.zip HEAD
```

Include a brief summary of any details about your solution you'd like to make us
aware of (ex. assumptions you made, limitations of your solution, what you would
have done differently given more time, etc.)

[jhepworth@huckberry.com](mailto:jhepworth@huckberry.com)

### Feedback

After completing and submitting the challenge we'd appreciate any feedback you
have on the challenge itself.

- Did the challenge allow you to adequately show your technical capabilities?
- Was the challenge an appropriate amount of effort?
- Were the specifications of the challenge clear enough while still allowing
  you room for creativity?

## Challenge Prompt

**Full Stack Challenge**

The current application has an API to list products, some extremely basic data
modeling, and a placeholder homepage. We would like you to add a couple of
features. You may choose a Backend or Frontend focus for Part 4 and 5.

### Part 1

- Render all Products from API on homepage with image, name, and price.
  - The exact design and layout is up to you, but we'd like to see a grid
    two products wide centered on the page. You're welcome to use the
    Huckberry website as inspiration.

### Part 2

- API endpoints to create and update `Product`s
  - Set up a JSON API that allows anyone to create and delete `Product` objects.
  - Available at `POST /api/products` and `DELETE /api/products/:sku`

### Part 3

- Improve Data Reliablity
  - Product SKU should be unique
  - Product Name, SKU, and Brand should be required
  - Errors should be communicated via the API during `Product` creation

### Part 4

Please choose either backend or frontend focus.

#### Backend Focus

- Add external logging to product requests
  – Send the timestamp, request path, and request method to a
  `https://webhook.site/` URL
  – Performance matters! We'll want to keep the endpoint to stay fast with
  hundreds of requests per second

#### Frontend Focus

- UI to create and delete `Product`s
  - Page to list `Product` by name with a "Delete" link.
  - "New"/"Create" link/button that opens a form to create a new `Product`.
  - "Save" button to update the `Product` in the DB.

### Part 5

Please choose either backend or frontend focus.

#### Backend Focus

- Build a "Pair With" endpoint
  - Available at `GET /api/products/:sku/recommendation`
  - Returns the "best" product to go along with the given `:sku`
  - Exact algorithm is up to you, but some data you could choose to use
    includes `Brand`, `Price`, `Color`, and `Launch Date`. 

#### Frontend Focus

- Product Brand based navigation
  - Setup links on homepage and new brand pages in a horizontal navigation that
    will take you to `/brands/:brand_name`
  - The `/brand/:brand_name` page should display all `Product` and only
    `Product` with that Brand.
  - Make sure that if you're viewing "Proof" at `/brands/proof` you can reload
    the page and still view the `Navigation` with "Proof" displayed in yellow.

## Attribution

Images sourced from [Unsplash](https://unsplash.com/).