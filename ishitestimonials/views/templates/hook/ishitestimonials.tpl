{*
* 2007-2016 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author    PrestaShop SA <contact@prestashop.com>
*  @copyright 2007-2017 PrestaShop SA
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{if $ishitestimonials.slides}
<div id="ishitestimonials">
	{assign var=item value=1}
	<div class="parallax" data-source-url="{if $ishitestimonials.ishiparallaximage}{$ishitestimonials.imagepath}{$ishitestimonials.ishiparallaximage} {/if}">
		<div class="container">
			<p class="sub-title">{l s='Something About' mod='ishitestimonials'}</p>
			<h3 class="home-title">
				{l s='Our Client Say' mod='ishitestimonials'}
			</h3>
			<div id="ishitestimonials-carousel" class="owl-carousel">
				{foreach from=$ishitestimonials.slides item=slide name='ishitestimonials'}
				{if $slide.active}
				<div id="ishitestimonials_{$item}" class="item">
					<div class="ishitestimonials-container">					
						<div class="testimonial-img">
							<div class="testi-image">
								<img src="{$slide.image_url}" alt="{$slide.name|escape}" />
							</div>
							<div class="quote">
								{include file='svg.tpl' icon='quote'}
							</div>
						</div>
						{if $slide.description}
							<div class="user-description">
								{$slide.description|escape}
								<div class="user-info">
									{if $slide.name}						
									<span class="user-name">
										{$slide.name|escape}
									</span>
									{/if}
									{if $slide.designation}
									<span class="user-designation">
										{$slide.designation|escape}
									</span>	
									{/if}							
								</div>
							</div>
						{/if}
					</div>
				</div>
				{/if}
				{assign var=item value=$item+1}
				{/foreach}
			</div>
		</div>
	</div>	
</div>
{/if}
