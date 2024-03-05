using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ASH.Models;

namespace ASH.Reviews
{
    public class AmazonReviews
    {
        public readonly List<ProductReview> ReviewList;

        public AmazonReviews()
        {
            ReviewList = new List<ProductReview>
            {
                new ProductReview
                {
                    Title = "Easy setup, good view, good battery life",
                    Review = "I love being able to check my breezeway when I am away from home. It is good to know when my messages say a package has arrived I can see when it was delivered. It's also great to see when people stop by. This was super easy to mount, I plan on getting the wedge to angle it more in the future.",
                    CustomerName = "Christina",
                    ProductName = "Ring Video Doorbell"
                },
                new ProductReview
                {
                    Title = "Yes!!!!! A lot of video for a tiny camera.",
                    Review = "Awesome. Just what I needed at an wonderful price. I can see exactly what my rockstars are doing while I'm at work. I wasnt sure how good the picture would be and I'm amazed. The night vision on this this is wonderful. Also gives me peace of mind knowing if someone was to break in for any reason. I would have instant access to Audio and video. Great product.",
                    CustomerName = "Mraul",
                    ProductName = "Ring Indoor Camera"
                },
                new ProductReview
                {
                    Title = "Everything I was looking for and expected",
                    Review = @"For my first Alexa type device, I have been quite happy with the Echo Show 5. It has customizable clock faces, and always shows me the time, day, date, and weather. I have set up many routines, added many skills, and features that work exactly as I expected. I have since bought another one. I have tested the ""drop-in"" and calling feature and had great audio/video quality. I can play music or listen to my books on a single Show, or all the Shows in the house simultaneously. The display during daytime or nighttime mode can be easily seen.",
                    CustomerName = "Dano",
                    ProductName = "Echo Show 5"
                },
                new ProductReview
                {
                    Title = "Worth every cent",
                    Review = @"As a younger woman living in a city alone, my loving 100lb watch dog was not enough. Previously I had alarm systems that didn't not quit match all that ring can do. I love the app features as far as being able to upload and view neighbors posted live feeds of suspicious activity & it even tells of activity in my neighborhood (fires, police calls, etc).",
                    CustomerName = "Heather",
                    ProductName = "Ring Video Doorbell"
                },
                new ProductReview
                {
                    Title = "Great product",
                    Review = @"Great product in a tiny package. Very easy to install. Excellent integration with all Echo / Ring apps and devices.",
                    CustomerName = "Akshay",
                    ProductName = "Ring Indoor Camera"
                },
                new ProductReview
                {
                    Title = "BEST MONEY IVE EVER SPENT",
                    Review = @"One of the best products I've ever purchased in my life... I can tell the Alexa I'm leaving home and it guards my home. It's set to tell me the news everyday at 6am and it video chats my mom, brothers and sons Alexa.",
                    CustomerName = "Shanta",
                    ProductName = "Echo Show 5"
                },
                new ProductReview
                {
                    Title = "Perfect in the kitchen!",
                    Review = @"We keep the Amazon Show 8 in our kitchen, and the whole family enjoys using it. Display is perfect size on the kitchen counter. We enjoy playing music (sounds great) and of course, we enjoy asking Alexa for the temperature or the weather forecast, and asking basically any question you can think of. Recipe feature is excellent too!",
                    CustomerName = "Truth B Told",
                    ProductName = "Echo Show 8"
                },
                new ProductReview
                {
                    Title = "Super easy to use, easy to setup, no special hub required",
                    Review = @"I opened the package, read the instructions, stuck the plug into an outlet, plugged in a light, Opened my Alexa app on my phone, told it to add a new device, it asked to 'scan QR code' , and one was provided on a slip of paper, and it automatically set the entire thing up. It was a snap!",
                    CustomerName = "Stephen CJ",
                    ProductName = "Amazon Smart Plug"
                },
                new ProductReview
                {
                    Title = "My favorite light bulbs",
                    Review = @"They are easy to connect to Alexa and seem to last a long time. I use these in addition to regular light fixtures and they make turning a light on and off easy even when you can't see the switch or don't want to get out of bed.",
                    CustomerName = "Alyssa",
                    ProductName = "Philips Hue Smart Bulbs"
                },
                new ProductReview
                {
                    Title = "New to Ring very pleased",
                    Review = @"Installation was very easy, setup was a breeze. It's something that gives some added peace of mind. Glad to have it. Can view and interact with visitors and delivery people. Should have had this years ago.",
                    CustomerName = "Matthew",
                    ProductName = "Ring Video Doorbell"
                },
                new ProductReview
                {
                    Title = "Very simple integration with existing Ring and Amazon Echo system",
                    Review = @"Very easy integration into my existing Ring and Amazon Echo smart home eco-system. Video quality and night vision is great. I have multiple Ring cameras, but this is the first wired smart camera, so I placed it in a room where I was able to hide the power cord effectively. I do like the benefit of not having to charge a battery like my other cameras.",
                    CustomerName = "Clyde",
                    ProductName = "Ring Indoor Camera"
                },
                new ProductReview
                {
                    Title = "Alexa Makes Everything Easier",
                    Review = @"I cannot begin to count the number of times I use Alexa. From turning lights off and on, playing music, answering questions and weather. The list goes on and on. With very little effort I have a smart home!!",
                    CustomerName = "LT",
                    ProductName = "Echo Show 5"
                },
                new ProductReview
                {
                    Title = "Like it more than I thought I would.",
                    Review = @"Works great by itself as an Alexa device or as a tool integrated into a smart home with security cameras. With Ring you can see who is at the door and have a conversation without going to the door. You can video chat. When you listen to Amazon music you can so lyrics when they are available and album art. For those nervous about the camera you can turn it off and it has a slide cover so you don't need to worry about it. All in all I'm pretty impressed with this device.",
                    CustomerName = "Guy Buying Stuff",
                    ProductName = "Echo Show 8"
                },
                new ProductReview
                {
                    Title = "I love this product!",
                    Review = @"Extremely easy to set up and use. I loved turning my Christmas tree lights on and off with a simple command",
                    CustomerName = "pmac57",
                    ProductName = "Amazon Smart Plug"
                },
                new ProductReview
                {
                    Title = "Nice Upgrade For Lights",
                    Review = @"We purchased these two to go in our nightstand lamps. It is nice to have dimming options that we didn't have before and a &#8220;good night&#8221; routine where we can turn all the lights off in one fell swoop!",
                    CustomerName = "SB",
                    ProductName = "Philips Hue Smart Bulbs"
                },
                new ProductReview
                {
                    Title = "Amazing and perfect",
                    Review = @"We wanted to add some security without over kill and this is perfect for knowing what motion is outside and the adjustability, along with knowing who rings the doorbell when we aren't home so we can check on pets at the house after. Overall the customization, ease of installation, appearance, security and compatible apps and Alexa use... it's an amazing product!",
                    CustomerName = "Scott",
                    ProductName = "Ring Video Doorbell"
                },
                new ProductReview
                {
                    Title = "Wow",
                    Review = @"The sound quality is amazing for such a small unit. There are two big pluses to having the screen. Being able to make video calls to friends and family who also have an Echo Show is a nice to have feature. But what I really love is loading all my photography into Amazon storage and having the Echo Show shuffle my 50 years of photographic memories in a continuous picture show.",
                    CustomerName = "Gary",
                    ProductName = "Echo Show 8"
                },
                new ProductReview
                {
                    Title = "Unbelievable Convenience",
                    Review = @"The convenience of being able to turn lights on or off while away form home, as well as using Alexa to do it when home, is amazing. Recently I was out and didn't realize I would be returning home well after dark. I have two puppies at home and don't like leaving them in a dark home. I just went on my app and turned two lights on that are connected to the Amazon plugs. The plugs are easy to install and work flawlessly.",
                    CustomerName = "cj385",
                    ProductName = "Amazon Smart Plug"
                },
                new ProductReview
                {
                    Title = "S",
                    Review = @"I was kind of late to the party and to use of voice-enabled products. It has made my life a lot simpler. Now if I'm in the kitchen and realized I forgot to turn off the bedroom light I can simply tell Alexa to do so. I can also turn my lights on by schedule before I ever get home or through the Alexa app on my phone. Very easy to install and I highly recommend them",
                    CustomerName = "Sharon",
                    ProductName = "Philips Hue Smart Bulbs"
                },
                new ProductReview
                {
                    Title = "For the whole family",
                    Review = @"Set it up today. It set itself up in mins. Music sounds great. Setup a device group and play music everywhere. Works great with ring as well since we have no peephole in the door. Made a custom album on Amazon photos, added as wallpaper.",
                    CustomerName = "Raj",
                    ProductName = "Echo Show 8"
                },
                new ProductReview
                {
                    Title = "I LOVE these plugs!",
                    Review = @"These plugs make any device a smart device. They are perfect for anything you don't want to physically turn off and on. I put the first on a fan in my bedroom because I frequently get hot in the middle of the night. Now, I just tell Alexa to turn my fan off or on without getting out of bed. LOVE IT! I just put a second on on my coffee pot. Works great. Easy to install.",
                    CustomerName = "sking",
                    ProductName = "Amazon Smart Plug"
                },
                new ProductReview
                {
                    Title = "I Love This Device",
                    Review = @"I never in a million years thought I would ever buy a device like this, or have a need for something like this. But after seeing one at my sister-in-law's house, I decided I was going to give it a chance. I absolutely LOVE the Echo Show 8 and Alexa!! I bought this along with the Echo Show 5, which is totally awesome in my bedroom. I love how I can view my Ring doorbell and cameras on it, and I love being able to ask Alexa to find me recipes, tell me the news, tell me the weather, and to play me some music!! I love being able to display a random rotation of my photos too, like a digital picture frame. So far, I am enjoying our first steps into having a ""smart"" home!!",
                    CustomerName = "Christine",
                    ProductName = "Echo Show 8"
                }
            };
        }
    }
}