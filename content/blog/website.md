---
title: "TATOE - the website and bugs"
date: 2025-07-03
draft: false
description: "This website. The apps"
tags: ["launch", "art-trail", "management"]
---

Today I first spent a couple of hours tidying up this website. I use **Hugo** https://gohugo.io/, which is a static website builder (so it doesn't need to "check to see you're human", where you have to check boxes containing zebra crosses for eg). It's fantastic, it's quick ...and free! But it's really only for techies. I've used only part of its capabilities - I can really say I'm no expert. I've just done the minimum.

I used Hugo theme **papermod**.... https://themes.gohugo.io/themes/hugo-papermod/

So I've worked on the home page today, and added the ko-fi button. That turned out to be quite easy.

I have also spent a few hours on the logic for admin. I hadn't noticed that admins were global, so when the owner set an admin, that admin could see - and edit - **all** art trails (for this owner's account of course - not owners worldwide!). It was a bit mind boggling but it seems to be OK.

The two apps are written in Flutter and Dart. Dart is strongly typed, and object oriented. Excellent language!

I registered my domain using 123-org.co.uk, but I'm hosting on netlify. Sorting out DNS is a bit of a pain when you only do it 4 or 5 times in your life. I got it working, but I can't say I fully understand it.