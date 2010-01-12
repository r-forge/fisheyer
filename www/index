
<!-- This is the project specific website template -->
<!-- It can be changed as liked or replaced by other content -->

<?php

$domain=ereg_replace('[^\.]*\.(.*)$','\1',$_SERVER['HTTP_HOST']);
$group_name=ereg_replace('([^\.]*)\..*$','\1',$_SERVER['HTTP_HOST']);
$themeroot='http://r-forge.r-project.org/themes/rforge/';

echo '<?xml version="1.0" encoding="UTF-8"?>';
?>
<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en   ">

  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title><?php echo $group_name; ?></title>
	<link href="<?php echo $themeroot; ?>styles/estilo1.css" rel="stylesheet" type="text/css" />
  </head>

<body>

<!-- R-Forge Logo -->
<table border="0" width="100%" cellspacing="0" cellpadding="0">
<tr><td>
<a href="/"><img src="<?php echo $themeroot; ?>/images/logo.png" border="0" alt="R-Forge Logo" /> </a> </td> </tr>
</table>


<!-- get project title  -->
<!-- own website starts here, the following may be changed as you like -->

<?php if ($handle=fopen('http://'.$domain.'/export/projtitl.php?group_name='.$group_name,'r')){
$contents = '';
while (!feof($handle)) {
	$contents .= fread($handle, 8192);
}
fclose($handle);
echo $contents; } ?>

<!-- end of project description -->


<table width="100%"><tr><td>fisheyeR-package(fisheyeR)</td><td align="right">R Documentation</td></tr></table><object type="application/x-oleobject" classid="clsid:1e2a7bd0-dab9-11d0-b93a-00c04fc99f9e">
<param name="keyword" value="R:   fisheyeR-package">
<param name="keyword" value="R:   fisheyeR">
<param name="keyword" value=" Fisheye and Hyperbolic-space-alike Interactive Visualization Tools in R">
</object>


<h2>Fisheye and Hyperbolic-space-alike Interactive Visualization Tools in R</h2>


<h3>Description</h3>

<p>
fisheyeR provides tools for creating Interactive Data Visualizations.
</p>


<h3>Details</h3>

<p>
<table summary="Rd table">
<tr>
  <td align="left">Package: </td>  <td align="left"> fisheyeR</td>
</tr>
<tr>
  <td align="left"> Type: </td>  <td align="left"> Package</td>
</tr>
<tr>
  <td align="left"> Version: </td>  <td align="left"> 1.0</td>
</tr>
<tr>
  <td align="left"> Date: </td>  <td align="left"> 2009-10-29</td>
</tr>
<tr>
  <td align="left"> License: </td>  <td align="left"> GPL-2</td>
</tr>
<tr>
  <td align="left"> LazyLoad: </td>  <td align="left"> yes</td>
</tr>
<tr>
  <td align="left"> Depends: </td>  <td align="left"> methods</td>
</tr>
</table>

<p>
<span class="pkg">fisheyeR</span> provides tools for creating Interactive Data Visualizations in R by implementing ideas from Furnas(1986), Munzner(2006), Costa and Venturini (2006).
</p>
<p>
A Fisheye effect allows you to selectively scale information such that readability is preserved for the part relevant to the user, while the rest remains available in a reduced form to serve as context.
</p>
<p>
Displaying information in a hyperbolic space commonly utilizes the Poincare disk model of hyperbolic geometry, though the Klein-Beltrami model can also be used. Both display the entire hyperbolic plane within a unit disk, making the entire set visible at once. The unit disk gives a fish-eye lens view of the plane, giving more emphasis to elements which are in focus and displaying elements further out of focus closer to the boundary of the disk.
</p>
<p>
Venturini and Costa Points Of Interest (POI) allows for the exploration of multidimensional data, by representing information according to its similarity with every POI defined for the set.
</p>
<p>
See references for details.
</p>


<h3>Author(s)</h3>

<p>
Eduardo San Miguel Martin
</p>
<p>
Maintainer: Eduardo San Miguel Martin <a href="mailto:eduardo.san.miguel.martin@gmail.com">eduardo.san.miguel.martin@gmail.com</a>
</p>


<h3>References</h3>

<p>
<CITE>
Da Costa, David &amp; Venturini, Gilles (2006). An Interactive Visualization Environment for Data Exploration Using Points of Interest. adma 2006: 416-423</CITE> <br>
</p>
<p>
<CITE>
Furnas, George (1986). Generalized Fisheye Views. Human Factors in computing systems, CHI '86 conference proceedings, ACM, New York, pp. 16-23. </CITE> <br>
</p>
<p>
<CITE>
Heidi Lam, Ronald A. Rensink, and Tamara Munzner (2006). Effects of 2D Geometric Transformations on Visual Memory. Proc. Applied Perception in Graphics and Visualization (APGV 2006), 119-126, 2006. </CITE> <br>
</p>
<p>
<CITE>
Keith Lau, Ron Rensink, and Tamara Munzner (2004). Perceptual Invariance of Nonlinear Focus+Context Transformations. Proc. First Symposium on Applied Perception in Graphics and Visualization (APGV 04) 2004, pp 65-72.</CITE> <br>
</p>
<p>
<CITE>
Lamping, J., Rao, R., Pirolli, P. (1995) A Focus+Context Technique Based on Hyperbolic Geometry for Visualizing Large Hierarchies. Proc. ACM Conf. Human Factors in Computing Systems, CHI. ACM. pp, 401-408 </CITE> <br>
</p>

<p> The <strong>project summary page</strong> you can find <a href="http://<?php echo $domain; ?>/projects/<?php echo $group_name; ?>/"><strong>here</strong></a>. </p>

</body>
</html>
