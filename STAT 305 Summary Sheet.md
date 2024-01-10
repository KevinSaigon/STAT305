## Chapter 1: Review 

### 1.4: Commonly Used Discrete Distributions

- the following has $n \text{ trials and probability of success } \pi$

|      Distribution and notation      |                        PMF, $f_Y(y)$                         |          E(Y)          |          Var(Y)           |                        MGF, $M_Y(t)$                         |
| :---------------------------------: | :----------------------------------------------------------: | :--------------------: | :-----------------------: | :----------------------------------------------------------: |
|       Bernoulli, $Bern(\pi)$        | $\begin{align*} f_Y(0) &= 1- \pi \\ f_y(1) &= \pi \\ (y &=0,1 ;~~~ 0 < \pi < 1) \end{align*}$ |         $\pi$          |       $\pi(1-\pi)$        |         $1 - \pi + \pi e^t \\ -\infty < t < \infty$          |
|       Binomial, $Bin(n, \pi)$       |              ${n \choose y} \pi^y(1-\pi)^{n-y}$              |         $n\pi$         |       $n\pi(1-\pi)$       |       $(1-\pi + \pi e^t)^n \\ (-\infty < t < \infty)$        |
|       Geometric, $Geom0(\pi)$       | $(1 - \pi)^y \pi \\ (y = 0,1, \ldots, \infty; ~~0 < \pi < 1) $ | $\dfrac{1 - \pi}{\pi}$ | $\dfrac{1 - \pi}{\pi^2}$  | $\dfrac{\pi}{1 - (1 - \pi)e^t} \\ (-\infty < t < -\ln(1-\pi))$ |
|       Geometric, $Geom1(\pi)$       |                    $(1-\pi)^{y - 1} \pi$                     |    $\dfrac{1}{\pi}$    | $\dfrac{1 - \pi}{\pi^2}$  | $\dfrac{e^t \pi}{1 -(1-\pi)e^t} \\ (-\infty < t< -\ln(1-\pi))$ |
| Negative Binomial, $NegBin(n, \pi)$ | ${{y-1} \choose {n-1}}(1 -\pi)^{y-n} \pi^n \\(y = n,~ n+1, \ldots,~\infty; \\n = 1,2, \ldots, \infty;\\ \pi < \pi < 1)$ |     $\dfrac n \pi$     | $\dfrac{n(1-\pi)}{\pi^2}$ | $\left(\dfrac{e^t \pi}{1-(1-\pi)e^5}\right)^n \\ -\infty < t < -\ln(1-\pi)$ |
|        Poisson, $Pois(\mu)$         | $\dfrac{e^{-\mu} \mu^y}{y!} \\ y = 0,1,\ldots, \infty; ~~\mu > 0$ |         $\mu$          |           $\mu$           |         $e^{\mu(e^t - 1)}~~~ (-\infty < t< \infty)$          |

- **note**: Geom0 version does **not** count the terminating successful trial, hence take the values 0, 1, 2... while Geom1 **does** count the terminating successful trial, taking value 1, 2, ....
  - the use of either notation indicates whether the support of the random variable starts at 0 or 1
  - Geom0 basically counts number of failures
  - Geom1 counts number of failures until and including the success trial
  
- Negative-Binomial Distribution:
  - negative random variable <u>$Y \sim NegBin(n, \pi)$ arises as sum of n independent $Geom1(\pi)$ random variables</u>
  - in other words, it counts number of Bernoulli trials until n successes have occurred 
    - $Geom1(\pi)$ distribution is the special case of the $NegBin(n, \pi)$ distribution with n = 1
  - if $Y \sim NegBin(n, \pi)$ then Y represents a <u>random sample size</u> to achieve a <u>fixed number (n) of successes</u>, while if $Y \sim bin(n, \pi)$ it represents a <u>random number of successes</u> in a <u>fixed sample size</u> 
  
- recall:
  $$
  \begin{align*}
  P(a < Y \leq b) &= P (Y \leq b) - P(Y \leq a) &&\text{ if Y is discrete RV, does not matter for continuous RV}
  \end{align*}
  $$
  



### 1.5: Commonly Used Continuous Distributions

|      Distribution and Notation      |                        PDF, $f_Y(y)$                         |              $E(Y)$               |                           $Var(Y)$                           |                        MGF, $M_Y(t)$                         |
| :---------------------------------: | :----------------------------------------------------------: | :-------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: |
|          Beta, $Beta(a,b)$          | $\dfrac{1}{B(a,b)} y^{a-1} (1-y)^{b-1} \\ 0 < y < 1; ~ a > 0;~b >0$ |         $\dfrac{a}{a+b}$          |                 $\dfrac{ab}{(a+b)^2(a+b+1)}$                 |                          Not Useful                          |
|       Chi-squared, $\chi^2_d$       | $\dfrac{1}{2^{d/2} \Tau(d/2)}y^{d/2} e^{-y/2} \\ (y > 0;~ d = 1, 2, \ldots)$ |                $d$                |                             $2d$                             |       $\dfrac{1}{(1-2t)^{d/2}}\\ (-\infty < t<  1/2)$        |
|    Exponential, $Expon(\lambda)$    |       $\lambda e^{- \lambda y} \\ (y > 0;~\lambda >0)$       |        $\dfrac 1 \lambda$         |                    $\dfrac 1 {\lambda^2}$                    |   $\dfrac{\lambda}{\lambda -t} \\ (-\infty < t < \lambda)$   |
|      Fisher's F, $F_{d_1d_2}$       | $B\left(\dfrac{d_1}{2},\dfrac{d_2}{2}\right)\left(1+ \dfrac{d_1}{d_2}y\right)^{\dfrac{d_1 + d2}{2}} \\ (y>0;~d_1,~d_2=1,2,\ldots)$ | $\dfrac{d_2}{d_2-2} \\ (d_2 > 2)$ | $\dfrac{2d^2_2(d_1 + d_2 - 2)}{d_1(d_2-2)^2(d_2-4)} \\ d_2 > 4$ |                       Does not exists                        |
|     Gamma, $Gamma(v, \lambda)$      | $\dfrac{1}{\Tau(v)} \lambda(\lambda y)^{v-1}e^{-\lambda y}\\ (y > 0;~v>0;~\lambda>0)$ |        $\dfrac v \lambda$         |                    $\dfrac v {\lambda^2}$                    | $\left(\dfrac{\lambda}{\lambda - t}\right)^v \\ (-\infty <t<\lambda )$ |
|    Gamma, $Gamma(\alpha, \beta)$    | $\dfrac{\beta^\alpha}{\Gamma(\alpha)}x^{\alpha - 1}e^{-\beta x}$ |       $\dfrac \alpha \beta$       |                   $\dfrac \alpha{\beta^2}$                   |         $\left(1 - \dfrac{t}{\beta} \right)^\alpha$          |
|      Laplace, $Lap(\mu, \phi)$      | $\dfrac{1}{2\phi}e^{-\dfrac{|y -\mu |}{\phi}} \\ (-\infty < y < \infty; \\-\infty < \mu < \infty;~~ \phi > 0)$ |               $\mu$               |                          $2\phi^2$                           | $\dfrac{e^{\mu t}}{1-\phi^2t^2} \\ \left(|t| < \dfrac 1 \phi \right)$ |
| Log-normal, $\log N(\mu, \sigma^2)$ | $\dfrac{1}{\sqrt{2\pi\sigma}}e^{\dfrac{-1}{2\sigma^2}(\ln(y) - \mu)^2} \\ (-\infty < y< \infty; \\ -\infty < \mu < \infty; ~\sigma^2 > 0)$ |      $e^{\mu + \sigma^2/2}$       |            $(e^{\sigma^2} -1)e^{2\mu + \sigma^2}$            |                   Does not exist at t = 0                    |
|     Normal, $N(\mu, \sigma^2)$      | $\dfrac{1}{\sqrt{2\pi\sigma^2}}e^{\dfrac{-1}{2\sigma^2}(y-\mu)^2} \\ (-\infty < y < \infty; \\ -\infty < \mu <\infty; ~ \sigma^2 > 0)$ |               $\mu$               |                          $\sigma^2$                          | $e^{\mu t} + \frac 1 2 \sigma^2 t^2 \\ (-\infty < t < \infty)$ |
|         Student's t, $t_d$          | $\dfrac{1}{B\left(\dfrac 1 2, \dfrac d 2 \right) \sqrt{d}} \left(1 + \dfrac{y^2}{d} \right) ^{-\dfrac{d+1}{2}} \\ (-\infty < y < \infty; ~ d = 1, 2, \ldots)$ |       $0 \text{ for } d> 1$       |                    $\dfrac{d}{d-2}~~ d>2$                    |                       Does not exists                        |
| Uniform (rectangular), $Unif(a,b)$  |             $\dfrac{1}{b-a} \\ (a < y<b;~ a< b)$             |         $\dfrac{a+b}{2}$          |                    $\dfrac{(b-a)^2}{12}$                     |  $\dfrac{e^{bt}-e^{at}}{(b-a)t} \\ (-\infty < t < \infty )$  |

- note: for the beta distribution:
  $$
  B(\alpha, \beta) = \frac{\Gamma (\alpha) \Gamma(\beta)}{\Gamma(\alpha + \beta )} ~~~~\text{ where } \Gamma \text{ is the Gamma function}
  $$
  
- <u>$Z \sim N(0,1) \Longrightarrow Z^2 \sim \chi_1^2$</u>
- <u>sum of Exponential distribution approximately follow Gamma (check Webwork)</u> 

## Chapter 2: Moment Generating Function & Normal Distribution

### 2.1: MGF

#### MGF Review

- MGF of a random variable Y is defined in general as
  $$
  \begin{align*}
  M_Y(t) &= E[e^{tY}] &\text{ for the values of } t \in \R \text{ for which the integral exists and is finite} \\
  &= \int^{\infty}_{-\infty} e^{ty}f(y) &\text{for the continuous case}~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\
  &= \sum_{y}e^{ty}p(y) &\text{ for the discrete case}~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  \end{align*}
  $$

  - where $f(y)$ is the PDF of Y

  - requires that $M_Y(t)$ exists in an open neighborhood of 0 (i.e $-T < 0< T \text{ for some } T> 0$)

  - see slides for proof

  - use: first derivative of MGF of a random variable Y gives the first moment, second derivative give second moment...
    $$
    \begin{align*}
    
    E[X^k] &= \frac{d^k}{dt^k} M_X(0) \\
    \text{ex:}~~~~~~~~ E[X] &= M'_X(0) \\
    E[X^2] &= M''_X(0)
    
    \end{align*}
    $$

  > Example: find $M_Y(t)$ where $Y \sim N(0,1)$
  > $$
  > \begin{align*}
  > M_Y(t) &= \int^{\infty}_{-\infty} e^{ty} \dfrac{1}{\sqrt{2\pi}}e^{-\frac 1 2 y^2}~dy \\
  > &= \int^{\infty}_{-\infty} \dfrac{1}{\sqrt{2\pi}} e^{et - \frac1 2 y^2} ~dy \\
  > &= \int^{\infty}_{-\infty} \dfrac{1}{\sqrt{2\pi}} e^{-\frac 1 2 (y - t)^2 + \frac 1 2 t^2}~dy &\text{ via completing the square} \\
  > &= e^{\frac 1 2 t^2} \int^{\infty}_{-\infty} \dfrac{1}{\sqrt{2\pi}} e^{-\frac 1 2 (y - t)^2 }~dy \\
  > &= e^{\frac 1 2 t^2} &\text{since the integral here is PDF of $Y\sim N(t,1)$}\\
  > &~&\text{which integrates to 1}
  > \end{align*}
  > $$

- linearity of MGF: let $X$ be a random variable and let $Y = a + bX$, then
  $$
  \begin{align*}
  Y &= a + b X, ~~~a,b \in \R \\
  M_Y(t) &= e^{at} E[e^{(b\cdot t)X}] \\
  &= e^{at} M_X(bt)
  \end{align*}
  $$
  

#### Existence

- for the MGF to exist, we require $E(e^{tY})$ to exist in a neighborhood of t= 0
  - i.e for $t$ in an open interval $-T < 0 < T, \text{ where } T >0 $

> Example: Does the MGF of the exponential distribution exist in an open interval around $t = 0$. See the PMF below
> $$
> M_Y(t) = \frac{\lambda}{\lambda -t}
> $$
> <u>Answer</u>: Yes, with $T=  \lambda$. Note that function is undefined when $T = \lambda$, however, if T is either bigger or smaller than $\lambda$, the function will be well defined

#### <u>Sum of Independent Random Variables</u>

- let us have $Y_1$ and $Y_2$ be independent random variables, then let $Z$ be the sum of these 2 variables (namely $Z = Y_1 + Y_2$) then:
  $$
  \begin{align*}
  \text{ Let } Z &= Y_1 + Y_2 \\
  M_Z&= M_{Y_1 + Y_2} = M_{Y_1}\cdot M_{Y_2} &\text{if $Y_1$ and $Y_2$ are independent} \\
  &= \left( \frac{\lambda}{\lambda - t}\right)^2\\
  \\
  \text{ Let } W &= Y_1 - Y_2 \\
  M_W &= M_{Y_1 - Y_2} = M_{Y_1}(t) \cdot M_{Y_2}(-t)  &\text{if $Y_1$ and $Y_2$ are independent} \\
  &= \left( \frac{\lambda}{\lambda - t}\right) \cdot \left(\frac \lambda {\lambda + t} \right) \\
  &= \left(\frac {\lambda^2}{\lambda^2 - t^2} \right)
  \end{align*}
  $$
  
  - <u>note that we also have that</u>
    $$
    \begin{align*}
    
    \text{Let } Z &= \sum^n_{i=1} X_i \\
    E[Z] &= E\left[\sum^n_{i=1} X_i \right] \\
    &= E[X_1 + \ldots + X_n] \\ 
    &= E[X_1] + \ldots + E[X_n] \\
    &= n\cdot E[X_1] &&\text{ if they are IID RV}\\
    &= n \mu \\
    \\
    Var[Z] &= Var\left[\sum^n_{i=1} X_i \right] \\
    &= Var(X_1 + \ldots + X_n)\\
    &= Var(X_1) + \ldots + Var(X_n) &&\text{ if they are independent} \\
    &= n\cdot Var(X_1) &&\text{ if they are also IID} \\
    &= n \cdot \sigma^2
    
    \end{align*}
    $$
  
  - thus from fact above we also have 
    $$
    \begin{align*}
    \text{Let } Z &= \dfrac {\sum^n_{i=1} X_i}{n} &\text{ and } X_i \text{ are all IID random variable} \\
    \\
    E[Z] &= E[X_1]\\
    &= \mu \\
    \\
    Var[Z] &= \dfrac{Var(X_1)}{n} \\
    &= \frac{\sigma^2}{n}
    
    \end{align*}
    $$

> Example: Let $Y_1$ and $Y_2$ be independent $Expon(\lambda)$ random variables, Let us look at the sum of these two random variables, $Z =  Y_1 + Y_2$ (the time until you get two new emails)
> $$
> \begin{align*}
> \text{ Let } Z &= Y_1 + Y_2 \\
> M_Z&= M_{Y_1 + Y_2} = M_{Y_1}\cdot M_{Y_2} &\text{if $Y_1$ and $Y_2$ are independent} \\
> &= \left( \frac{\lambda}{\lambda - t}\right)^2
> \end{align*}
> $$
> What does MGF of $X = Y_1 + Y_2$ say about the distribution of X
>
> ​	Looking at the table in 1.5, we can see it's MGF of a RV that's gamma distributed 
>
> ​	Therefore, $X \sim \text{Gamma}(v = 2, \lambda)$

#### Fingerprint and Other Properties

- <u>Fingerprint Property</u>: if two random variables X and Z have the same MGFS (ex. $M_X(t) = M_z(t)$) for all t  in an open interval of 0, then X and Z have the same cumulative distribution function (CDF)

  - this is why we can determine the distribution of X above
  - **no other distribution with have the same MGF as another distribution - MGFs are identifying characteristics**

- also note that we have
  $$
  M_{cX}(t) = M_X(ct)
  $$

#### Poisson Approximation

- <u>Law of Rare Events</u>: if $Y_n \sim Bin(n, \pi_n)$ with $ \pi_n \rightarrow 0 \text{ and } n\pi_n \rightarrow \mu >0$ as $n \rightarrow \infty, ~ \text{then }$ 
  $$
  \frac{n!}{(n-k)!k!}p^k (1-p)^{n-k} \rightarrow e^{-\mu} \frac{\mu^k}{k!}
  $$

  - <u>in other words</u>: so if you have a binomial distribution $X \sim Bin(n, p)$ where $n$ is very big, $p$ is very small, and that as n gets bigger, p gets smaller and smaller, you can approximate by $X \sim Pois(np)$
    $$
    X \sim Bin(n,p) \xrightarrow{n \rightarrow \infty} X \sim Pois(np)
    $$

- sometimes using the Poisson is more convenient - especially when dealing with means and they're not given (you can just say $\mu = np$ if you're approximating by the Poisson)

#### <u>Review: Convergence in Distribution</u> 

- notation: $Y_n \xrightarrow{d} Y$ means "$Y_n \text{ converges in distribution to Y }$"

- <u>useful properties</u>:

  - if $X_n \xrightarrow{d} X$ and $Y_n \xrightarrow{d} Y$, and $X_n, ~Y_n, ~X,~ Y$ are indepedent 
    then $X_n + Y_n \xrightarrow{d} X + Y$

  - Slutsky's theorem: if $X_n \xrightarrow{d} X \text{ and } Y_n \xrightarrow{d} Y$, where $Y$ is deterministic (i.e $Y \equiv c$ - so Y is a RV with no randomness, is a constant), then
    $$
    Y_n + Y_n \xrightarrow{d} X + c\\
    X_n \cdot Y_n \xrightarrow{d} X \cdot c\\
    X_n - Y_n \xrightarrow{d} X - c\\
    \frac{X_n}{Y_n} \xrightarrow{d} \frac X c
    $$

  - if $g$ is a continuous function and $X_n \xrightarrow{d} X$, then $g(X_n ) \xrightarrow{d} g(X)$



### 2.2: <u>Normal Distribution in Statistics</u>

- recap: Let $Y$ be a normal random variable with mean $\mu$ and variance $\sigma ^2$ &rightarrow; denoted $Y \sim N(\mu, \sigma^2)$, then
  $$
  E(Y) = \mu \\
  Var(Y) = \sigma^2
  $$

- linearity of the Normal: linear function of $Y \sim N(\mu, \sigma^2 )$ is also normal
  $$
  a+bY \sim N(a+b\mu, b^2 \sigma^2)\\
  $$

  - above fact is important for the standardization of $Y$
    $$
    \begin{align*}
    Z &= \frac{Y - \mu}{\sigma} \\
    &= -\frac \mu \sigma + \frac 1 \sigma Y \\
    \therefore Z &\sim  N(0,1)
    
    \end{align*}
    $$

- for more normal distribution facts, check the Finals Review page

#### <u>Confidence Interval</u>

- before the $t$-distribution, we can construct a $c\%$ confidence interval for the unknow mean $\mu$ by 
  $$
  \begin{align*}
  \bar{x} &\pm z_b \frac s {\sqrt n} \\ \\
  \text{where } \bar{x} &= \text{ sample mean} \\s &= \text{sample std, } \\
  n &= \text{ sample size and } Z \sim N(0,1) \\
  b &= 100 - \left(\frac{100-c}{2}\right)\\
  \text{ in code, } z_b &= \text{qnorm(b)}
  
  \end{align*}
  $$

  - note that we replace $s$ with $\sigma^2$ if the (population) standard deviation known
  - <u>note that the code takes the form `qnorm(p, mean, sd)`</u>
  - this is called the <u>approximate confidence interval</u>
  - <u>interpretation</u>: $\bar Y$ is a random variable (namely it changes over repeated samples) - the process of obtaining a 95% confidence interval over such repeat random samples captures the true value of $\mu$ with probability 0.95
  
- similarly, we can constrct a $c\%$ confidence interval for the unknown proportion $p$
  $$
  \begin{align*} \\
  
  \hat{p} &\pm z_b \sqrt{\frac{\hat{p} (1-\hat{p})}{n}} \\
  \\
  \text{where } \hat{p} &= \text{sample proportion} \\
  n &= \text{sample size} \\
  b &= 100 - \left(\frac{100-c}{2}\right)\\
  \text{ in code, } z_b &= \text{qnorm(b)}
  
  \end{align*}
  $$

- also note that we have the following general form for the $c\%$ <u>confidence interval for the unknown parameter $\theta$</u> once you understand standard error
  $$
  \begin{align*}
  \hat {\theta} &\pm z_b \cdot se(\hat \theta) \\
  \\
  \text{where } \hat \theta &= \text{ estimate of unknown parameter} \\
  b &= 100 - \left(\frac{100-c}{2}\right)\\ 
  z_b &= \text{ quantile below b depending on distributon of } \theta
  \end{align*}
  $$



#### Sample Variance and t-distribution

- our confidence interval has a statistical deficiency
  - we treated the standard deviation as known, but we actually used an estimate $\sigma = s = 3.6$ where $s$ was the sample standard deviation 
    - this was standard practice before Gosset's 1908 paper written under pseudonym "Student"

- so now, we have that when $Y_i \sim N(\mu, \sigma^2)$ and are i.i.d
  $$
  \frac{\overline{Y} - \mu}{S/\sqrt{n}} \sim t_{n-1}(\mu, s)
  $$

  - <u>now, we can construct a $c\%$ confidence interval for the unknown mean $\mu$ by</u> 
    $$
    \begin{align*}
    CI & =\mu \pm t^*_{n-1} \frac s {\sqrt n} ~~~~~ \text{ where } s = \text{ sample std, } n = \text{ sample size} \\
    \\
    * &= 100 - \left(\frac{100-c}{2}\right)\\ 
    n &= \text{ sample size} \\
    s &= \text{ sample standard deviation}\\
    t^*_{n-1} &= \text{a quantile constant}
    
    \end{align*}
    $$

    and where `t* = qt(*, n-1)`
    $s$ can be found using `sd(vec)` where `vec = c(y1, y2, y3,..., yn)` (vector of sample observations)
  
- say we have $\mu \pm b$ where $b$ is the calculation with t or z, then b is called the <u>margin of error</u>

  - interpretation: the error is within $b$ approximately 95% of the time 

#### Review: "Equal" vs "Equal in Distribution"

- <u>equality of random variables</u>: $X_1 = X_2$
  - $X_1(s) = X_2(s)$ for all outcome s
  - ex. flip 2 coins, then switch the second one to match the first one
    - $X_1 = X_2$ 
    - (and also) $X_1 \stackrel{\text{d}}{=} X_2$
- <u>equality in distribution</u>: $X_1 \stackrel{\text{d}}{=} X_2$
  - the CDFs are equal,$F_{X_1}(x) = F_{X_2}(x)$ for all x 
  - flip 2 coins, then switch the second one to be the opposite the first one 
    - $X_1 \neq X_2$
    - but still, $X_1 \stackrel{\text{d}}{=} X_2$ as they both have the Bernoulli CDF with parameter 1/2
- <u>approximate equality in distribution</u>: $X_1 \stackrel{\text{d}}{\approx} X_2$
  - the CDFs are approximately equal, $F_{X_1}(x) \approx F_{X_2} (x)$ for most "x"
  - typically formalized with a statement about convergence in distribution 

#### Central Limit Theorem

- <u>The Central Limit Theorem</u> 
  - let $Y_1, Y_2$ be sequence of IID random variables (could be <u>of any distribution</u>) with mean $\mu$, variance $\sigma^2 < \infty$. 

  - define the sum $X_n$ as 
    $$
    X_n = \sum_{i=1} ^n Y_i \\
    $$

  - The standardized sum $Z$ converges to $N(0,1)$
    $$
    Z_n = \frac{X_n - n \mu}{\sigma \sqrt n}
    $$

  - so, the result is that if we have IID RV $X_1, \ldots, X_n$,  for large enough $n$, we can say 
    $$
    \begin{align*}
    \text{Let } X_{\text{sum}} &= \sum_{i=1}^{n} X_i &&\text{ we have } X_{\text{sum}} \sim N(n\mu, n\sigma^2) \\
    
    \text{Let } \bar X &= \frac{\sum_{i=1}^{n} X_i} n &&\text{ we have } \bar X  \sim N \left(\mu, \frac{\sigma^2} n \right) \\
    
    \end{align*}
    $$
  
- the result of the CLT can be applied to sums or means of a large number of IID random variables

  

## Chapter 3: Statistical Estimator

### 3.1: Statistical Models - The Role of Probability 

- usually probability calculations start with probability model (distribution) for some RV, $Y$ and we try to calculate $Pr(Y \geq c)$ or $E(Y)$
  - requires special knowledge - to carry out the calculations, <u>the values of the model's parameter must be known</u>
- statistical inference is like opposite
  - start with data (observed data $y$)
  - if the form of the distribution is known (i.e Poisson), the values of its parameter (i.e $\mu$) or parameteres will usually have to be estimated from the data 
- usualy steps
  - choose probability model based on the context - sometimes extremely difficult 
  - estimate parameter(s) of the distribution (ex. $\pi$ for binomial or $\mu \text{ and } \sigma^2$ for the normal) from a sample of $y$ values - this gives a fitted distribution, fitted to the data 
  - check that fitted distribution is in reasonable agreement with the data - not easy
  - use probability model to answer questions of scientific interest, make predictions, etc 



### 3.2: The Frequentist Philosophy 

- this portion concentrates on second steps above  - estimating parameters of a given (chosen) distribution 
- in general, let $\theta$ be a parameter of interest - we will use some method to generate an estimate $\hat \theta$ from the data
  - $\hat \theta$ is an <u>estimate</u> and is a number &rightarrow; thus have no statistical properties
  - an estimate of a parameter is based on one or more statistics, function of the data like the sample mean or sample proportion 
  - without the true value, cannot say how good an estimate is
- in frequentist philosophy, we consider values of $\hat \theta$ that would have occurred in repeated samples from the assumed probability 
  - often a hypothetical argument because there is only one sample of data 
  - nonetheless, we consider other samples that might have occurred, each would generate its own value of $\hat \theta$ and now $\hat \theta$ has a sampling distribution (i.e it's a RV) 
  - <u>the RV is called an estimator of $\theta$ and will be denoted $\tilde \theta$</u>
    - statistical properties of random variable $\tilde \theta$ explored in the next subsection can be used to make statements about how accurate the estimator is in estimating $\theta$ over repeated random samples 
- see textbook for example, pg 114/392



### <u>3.3: Properties of an Estimator (Bias, Consistency, etc)</u>

- let $\tilde \theta$ be an estimator of the parameter $\theta$, we can answer questions like "how good is $\tilde \theta~$" or "how much error does it have in estimating $\theta$ ".

  - we can answer these by examining statistical properties of $\tilde \theta$ and hence its error $\tilde \theta - \theta$

- <u>bias</u>: bias of $\tilde \theta$ follows from its expectation
  $$
  \begin{align*}
  Bias(\tilde \theta) &= E(\tilde \theta) - \theta\\
  &= E(\tilde \theta - \theta)
  
  \end{align*}
  $$

  - <u>if $E(\tilde \theta) = \theta$, then bias is 0, we say that the estimator is unbiased</u> &rightarrow; desirable
  - unbiasedness means that sampling distribution of $\tilde \theta$ is centered on the true value, $\theta$

- <u>consistency</u>: if we estimate $\theta$ using an estimator $\tilde \theta_n$ (an RV)

  - if $\tilde \theta_n \xrightarrow{d} \theta$ as $n \rightarrow \infty$, then we say $\tilde\theta_n$ is a consistent estimator of $\theta$
  - or, if $\lim_{n \rightarrow \infty} Var(\tilde \theta) = 0$, then $\tilde \theta_n$ is a consistent estimator 

- <u>variance</u>: variance of $\tilde \theta$ as an estimator of $\theta$ is defined just like variance of any RV

  - small values of $Var(\tilde \theta)$ are desirable b/c the estimator has small variability over random samples 

- <u>mean squared error (MSE)</u>: a measure of accuracy summarizing the distribution of the error $\tilde \theta - \theta$ - the expectation of the squared error
  $$
  \begin{align*}
  
  MSE(\tilde \theta) &= E(\tilde \theta - \theta)^2 \\
  &= Var(\tilde \theta) - Bias^2(\tilde \theta)
  
  \end{align*}
  $$

  - MSE penalizes an estimator both for having bias (i.e wrong expectation or mean) and for its variance 
  - as MSE decreases, the accuracy of $\tilde \theta$ in estimating $\theta$ increased in this statistical sense 
  - if $\tilde \theta$ is unbiased, then $MSE( \tilde \theta) = Var(\tilde \theta)$ - is usually the case 

- <u>estimated standard deviation aka standard error</u>

  - because the variance of the estimator often depends on the real value - we can estimate the standard deviation as the <u>standard error</u>
  - written as $\widehat {sd(\tilde \theta)} = se(\tilde \theta)$ and 
    - you would plug the estimate - say $\hat \mu$ in place of the real parameter $\mu$

- <u>asymptomatically unbiased</u>: $ \tilde \theta_n$ is asymptotically unbiased if $E_\theta(\tilde \theta_n) \rightarrow \theta$

  - unbiased &rightarrow; asymptotically unbiased 
  - consistent &rightarrow; asymptotically unbiased 
  - all other implications between unbiased, asymptotically unbiased, and consistent do not hold in general

  > Example: Asymptotical Properties - consider running model $Y_i \sim Pois(\mu)$ 
  >
  > - if we had an estimator $\tilde \theta _n '= Y_1 + \frac 1 n$ &rightarrow; it is biased, not consistent but asymptotically unbiased
  >
  >   - biased because expectation will be $\mu + \frac 1 n$ which is not $\mu$ 
  >   - but as you take $n \rightarrow \infty \text{ of } E(\tilde \theta_n') $ it will approach $\mu$ (asymptotically unbiased)
  >   - not consistent because variance always be $\mu$
  >
  > - Consider another estimator that's $\tilde \theta ''_n = \bar Y + \frac 1 n$. It is biased but consistent 
  >
  >   - biased: $E(\bar{Y}  + 1/n) = \mu + \frac 1n \neq \mu$
  >
  >   - consistent: use Slutsky which says if $X_n \xrightarrow d X \text{ and } Z_n \xrightarrow d c \text{ then } X + Z_n \xrightarrow d X + c$
  >     $$
  >     \begin{align*}
  >     X_n &= \bar{Y} = (Y_1 + \ldots + Y_n) /n &\text{ and } X_n \xrightarrow d \mu \text{ by law of large numbers} \\
  >     Z_n &= 1/n &\text{ so that } Z_n \xrightarrow d  0 \\
  >     \therefore \bar{Y} + \frac 1 n &\xrightarrow d\mu + 0 &\text{ via Slutsky, as required}
  >                         
  >     \end{align*}
  >     $$

  




## Chapter 4: Maximum Likelihood Estimation

### 4.1: Maximum Likelihood

- maximizing the likelihood is a very general approach to estimate parameters - can be applied to complex stat models

- essence of the ML method: 

  - find the value(s) of the parameter(s) that makes the data "most likely". 
    - so once we've collected the data and we know the observed value, $y$, of Y, and this value can be placed into the PMF above, leaving $\pi$ as the only unknown. 
  - when regarded with respect to $\pi$, the probability function is called the likelihood function. 

- <u>running example</u>: HIV Vaccine - ML estimate of the binomial $\pi$ parameter 

  - investigators are interested in comparing HIV infection rates in two arms of trials - second row of data in Table 1.5 stats the 8197 subjects receiving the vaccine, 51 were HIV positive, the remaining 8146 were not infected

  - let $Y$ be number of HIV positive subjects observed - Y is a binomial with $n = 8197$ and unknown probability $\pi$
    $$
    Y \sim Bin(n, \pi)\\
    \therefore f_Y (y \mid \pi) = Pr(Y = y \mid \pi) = {n \choose y} \pi^y(1-\pi)^{n-y}~~~ (y= 0, \ldots, n)
    $$

  - attempt to calculate $\pi$: we try out different $\pi$ for $y = 51$ and gets various results and we should pick the $\pi$ that yields the highest probability

> ML Example - HIV Vaccine 
>
> Using calculus or graphing, let's find the $\pi$ that yields the highest probability of $y = 51$. L is the likelihood function but sometimes it's better to work with the log-likelihood (natural log) function
> $$
> \begin{align*}
> L(\pi) &= f(\pi \mid y) = {n \choose y} \pi^y(1-\pi)^{n-y} &&(y= 0, \ldots, n) \\
> \mathcal{L}(\pi) & = \ln f(\pi \mid y ) =  \ln {n \choose y}  + y \ln(\pi) + (n-y) \ln (1 -\pi) && (0 < \pi < 1) \\
> \frac{\partial}{\partial \pi} \mathcal{L}(\pi) &= \frac y n - \frac{n - y}{1 -\pi} = 0  \\
> \therefore \hat \pi &= \pi = \frac y n
> 
> \end{align*}
> $$
> We need to check that $\hat \pi$ is a global max by checking that the second derivative is negative at that point
> $$
> \frac{\partial ^2} {\partial \pi^2}  \ln f_Y(y \mid \pi) = -\frac y {\pi^2}  - \frac{n-y}{(1-\pi)^2} 
> $$
> We see that the second derivative is negative for all values of $\pi$ so a local max has been found. Thus we can say $\tilde \pi = \frac y n$ is an estimator for $\pi$
>
> <u>Note</u>: we want to check at the second derivative at the ML estimate ($y/n$ in this case - $y$ and $n$ will be numbers that you can plug in) - <u>if second derivative is negative, we've found a local max</u>
>
> From here, we can find $Var(\tilde \pi)$ as well as $sd(\tilde \pi)$
> $$
> \begin{align*}
> Var(\tilde \pi) &= Var \left(\frac Y n \right) \\
> &= \frac 1 {n^2} Var(Y) \\
> &= \frac {n\pi(1-\pi)} {n^2}  &&\text{ Variance of the Binomial}\\
> sd(\tilde \pi) &= \sqrt{\frac {\pi(1-\pi)} {n}} \\
> \therefore se(\tilde \pi )&= \sqrt{\frac {\hat \pi(1- \hat \pi)} {n}}
> 
> \end{align*}
> $$

- <u>important</u>: if we have $n$ values in the sample, $y_1, \ldots, y_n$ corresponding to $Y_1, \ldots, Y_n$. Let $Y_1 \ldots Y_n$ be i.i.d random variable, their joint PMF/PDF is
  $$
  f_{Y_1, \ldots, Y_n} (y_1, \ldots, y_n \mid \theta) = \prod^n_{i=1} f_Y(y_i \mid \theta)
  $$
  which makes the log likelihood look like so (easier to compute)
  $$
  \ln f_{Y_1, \ldots, Y_n} (y_1, \ldots, y_n \mid \theta) = \sum^n_{i=1} \ln f_Y(y_i \mid \theta)
  $$

  - pay attention to questions where they give you sample values - like the webwork

- not all likelihood functions can be maximized 

- <u>invariance property</u>: if $\hat \theta$ is the ML estimate of a parameter $\theta$, then $g(\hat \theta)$ is the ML estimate of $g(\theta)$ for monotonic inc/dec functions $g$

- if distribution has several parameters, likelihood is a function of these parameters - it'll be a multi-dimensional optimization 

  - ex. parameters $\mu \text{ and } \sigma^2$ of the normal distribution

- for more complex models, it's nearly impossible to mathematical optimize with respect to the parameter(s) - numerical optimization is then used 

  

### 4.2: Properties of ML Estimators

- let $Y_1, \ldots, Y_n$ be independent RV with PDF/PMF, $f_Y(y \mid \theta)$, for a given sample, we usually write
  $$
  f_{Y_1, \ldots, Y_n} (Y_1, \ldots, Y_n \mid \theta) 
  $$
  for joint likelihood. To obtain statistical properties of the ML estimation procedure, we need to consider repeated random samples. If the data $y_1, \ldots, y_n$ change from sample to sample, so will the likelihood function. It becomes an RV
  $$
  f_{Y_1, \ldots, Y_n} (Y_1, \ldots, Y_n \mid \theta)
  $$

- furthermore, if the likelihood function changes from sample to sample, so does the value of $\theta$ maximizing it

  - so in the frequentist view, $\hat \theta$ is a value of the ML estimator $\tilde \theta$ , a RV with stat properties that relate to how accurately $\theta$ is estimated 

- there is sampling variance and thus you will get different ML estimates (estimator is the same) 

  - you can get all those point-estimates and calculate the sample variance of the estimator
  - process of simulating repeated samples to estimate the variance of an estimator is <u>called a bootstrap</u>
  - see example in notes review




### 4.3: Consistency of the ML Estimator

- as sample size increases, <u>ML estimator is consistent by definition</u>
  - there is convergence in probability of $\tilde \theta$  to the true value of $\theta \text{ as } n  \rightarrow \infty$

- <u>theorem 4.1: consistency of ML estimator</u>

  Let $Y_1, \ldots, Y_n$ be independent random variables with PDF or PMF $f_Y(y \mid \theta)$. The (uknown) true value of parameter $\theta$ is $\theta_0$. Under certain "regularity" conditions on $f_Y(y \mid \theta)$ as a function of $\theta$, the ML estimator of $\theta$ is consistent in the sense that for any fixed $\delta > 0$
  $$
  \lim_{n \rightarrow \infty} Pr \left(\frac{\partial}{\partial \theta} 
  \ln f_{Y_1,\ldots, Y_n}(y_1, \ldots, y_n) \mid \theta ~~ \text{ for some } \theta \in (\theta_0 - \delta, \theta_0 + \delta) \right) = 1
  $$
  In other words, as $n \rightarrow \infty$, the estimator $\tilde \theta$ from setting the derivative of the log-likelihood to zero lies within an arbitrarily small neighbourhood of the true value of $\theta$ with limiting probability 1. Thus we have consistency. Note that this result also applies if $\theta$ represent a finite number of parameters (the normal with $\mu \text{ and } \sigma^2$)



### 4.5: Large-Sample Variance of the ML Estimator 

- now we are <u>looking at estimating the sampling variance (over repeated samples) without simulating repeated samples</u>

- we are looking at "peakedness" of the log likelihood curve

  - this is called <u>the information</u> for estimating the parameter ($\pi$ here)
  - we used the negative of the second derivative of the curve at its max to quantify peakedness
  - more peaked the curve, the more negative the second derivative - more information we have 

- <u>point: an approximate variance of the ML estimator is obtained from the inverse of the information</u>


#### Observed Information

- negative of the second derivative of log likelihood is called <u>observed information</u>

  - will be denoted as $I$ as opposed to $\mathcal {I} $ for Fischer

- if 2nd derivative cannot be derived algebraically it can be computed numerically by a finite difference approximation
  $$
  I_n(\theta, y_1, \ldots, y_n) = -\frac{\partial^2}{\partial \theta^2} \ln f_{Y_1, \ldots Y_n} (y_1, \ldots, y_n \mid \theta)
  $$

- under certain "regularity" (smoothness) conditions on $f_Y(y \mid \theta)$, an approximation to the variance of the ML estimator of $\theta$ is given by
  $$
  Var(\bar{\theta}) \approx \frac{1}{I_n (\theta, y_1,\ldots, y_n)}
  $$

- general results here is an approximate that improves as $n \rightarrow \infty$ (an asymptotic result)

  - in practice the statsiticians apply such results to "large sample"
  - for large but finite samples, then results are just approximations - though sometimes turn out to be exact 

- another practical concern is that $\theta$ is unknown, and to get the variance of the ML estimator you need $\theta$, so we plug in the ML estimate $(\hat \theta)$ to get give an estimate of the variance (square root to get standard error)
  $$
  \begin{align*}
  \widehat{Var}(\tilde \theta) &= \frac{1}{I_n(\hat{\theta}, y_1, \ldots, y_n)} \\
  \\
  se(\tilde \theta) &= \frac{1}{\sqrt{I_n(\hat \theta, y_1, \ldots, y_n)}}
  \end{align*}
  $$

> Example: Exponential distribution - observed information
>
> First, the log likelihood of the exponential is 
> $$
> \ln f_{Y_1, \ldots, Y_n}(y_1, \ldots, y_n \mid \lambda) = n \ln(\lambda) - \lambda \sum^n_{i=1} y_i
> $$
> Differentiating twice gives 
> $$
> \frac{\partial}{\partial \lambda} \ln f_{Y_1, \ldots, Y_n} (y_1, \ldots, y_n \mid \lambda) = \frac n \lambda - \sum^n_{i=1} y_i \\
> \frac{\partial^2}{\partial\lambda^2} (\lambda, y_1, \ldots, y_n) = \frac n {\lambda^2}
> $$
> Then by definition,
> $$
> I_n (\lambda, y_1, \ldots, y_n) = \frac n {\lambda^2}
> $$
> Then by applying results above 
> $$
> Var(\tilde \lambda) = \frac{1}{I_n(\lambda, y_1, \ldots, y_n)} = \frac{1}{\frac{n}{\lambda^2}} = \frac{\lambda^2}{n}
> $$

#### Fischer's Information

- <u>Fischer's information</u>: defined as expectation over hypothetical repeated samples of observed information 
  
  - denoted as $\mathcal{I}$
  
- Let $f_{Y_1, \ldots, Y_n} (Y_1, \ldots, Y_n \mid \theta)$ be the joint PDF or PMF of the data, $Y_1, \ldots, Y_n$. Then the Fischer information for estimating the parameter $\theta$ is 
  $$
  \mathcal{I}_n (\theta) = E \left(- \frac{\partial^2}{\partial \theta^2} \ln f_{Y_1, \ldots, Y_n} (Y_1, \ldots, Y_n \mid \theta) \right)
  $$
  where expectation is with respect to $Y_1, \ldots, Y_n$
  
  - like the observed information, regularity conditions on $f_Y(y \mid \theta)$ are required and in general the approximation improves as $n \rightarrow \infty$ 
  
  - <u>sometimes, inverse of Fisher information product an exact variance formula</u> (Binomial case)
    $$
    Var(\tilde \theta) = \frac 1 {\mathcal{I}_n (\theta)}
    $$
  
    - <u>very important</u>: remember to flip it to get variance 
    
  - unlike observed info (function of the data), Fisher information by definition is an expectation over all possible samples (hence data and likelihood function must be treated as RV)
  
- thus with $n$ IID observations (i.e well-behaved log likelihood functions), you can put the summation to the outside and get the following results
  $$
  \begin{align*}
  \mathcal I_n(\theta) &= \sum^n_{i=1} E \left(\frac{\partial^2}{\partial \theta^2} \ln f_Y(Y_i \mid \theta)\right) = n \mathcal I_1(\theta) \\
  
  \text{ where } ~~~\mathcal  I_1 &= E\left(\frac{\partial^2}{\partial \theta^2} \ln f_Y(Y \mid \theta)\right) \\
  
  \\
  \therefore Var(\tilde \theta) &\approx \frac 1 {\mathcal I _n (\theta)} = \frac 1 {n \cdot \mathcal I _1}
  
  
  \end{align*}
  $$
  
  - <u>note</u>: if you already have the joint distribution (i.e $f_{Y_1, \ldots,Y_n}$), then you don't have to multiply by n, Fischer info is just $E(-\text{ second derivative of } f_{Y_1, \ldots, Y_n})$

> ML Estimator - Earthquake Example
>
> Wesnousky and Biasi modelled the number of steps ($y$) within an earthquake rupture as a realization of a $Geom0(\pi)$ distribution. Recall the pdf of the $Geom0(\pi)$ distribution
> $$
> f_Y(y \mid \pi) = (1-\pi)^y \pi ~~~~~~(y = 0,1 \ldots ,\infty; ~ 0 < \pi < 1)
> $$
> They gathered 22 samples, $y_1, \ldots ,y_{22}$ for random variables $Y_1, \ldots, Y_{22}$ and they're assumed to be i.i.d 
> $$
> \begin{align*}
> f_{Y_1, \ldots, Y_n (y_1, \ldots, y_n \mid \pi )} &= \prod^n_{i=1}Pr(Y_i = y_i \mid \pi) \\ &= (1-\pi)^{\sum^n_{i=1}y_i} \cdot \pi^n \\
> \ln f_{Y_1, \ldots, Y_n (y_1, \ldots, y_n \mid \pi )} &= \sum^n_{i=1} y_i \ln(1 - \pi) + n \ln(\pi) \\
> &= \ln(1-\pi) \cdot n \bar{y} + n \ln(\pi)\\
> &= n [\bar y \ln(1-\pi) + \ln \pi]
> \end{align*}
> $$
> Note that the sum of $y_1, \ldots, y_n$ usually expressed as $n \cdot \bar{y}$
>
> From here we can find the ML estimator of $\pi$
> $$
> \begin{align*}
> \frac{\partial}{\partial \pi} f &= -\frac{n \bar y}{1 - \pi} + \frac n \pi = 0 \\
> \therefore \hat \pi &= \frac{1}{1+\bar y}
> 
> \end{align*}
> $$
> We will have a bit of trouble trying to find the variance/standard error of $\tilde \pi$ because it doesn't conform to any nice linearity properties that we have - will have to use observed or Fischer's.
>
> Taking the second derivative
> $$
> \begin{align*}
> \frac{\partial^2}{\partial \pi^2} \ln f_{Y_1, \ldots, Y_n} (Y_1, \ldots, Y_n \mid \pi) &= - \frac{\sum^n_{i=1} Y_i}{(1- \pi)^2}- \frac n {\pi^2}\\
> \\
> \therefore \mathcal{I}_n(\pi) &= E \left( - \frac{\partial^2}{\partial \pi^2} \ln f_{Y_1, \ldots, Y_n} (Y_1, \ldots, Y_n \mid \pi) \right) \\
> &= E \left( \frac{\sum^n_{i=1} Y_i}{(1- \pi)^2} + \frac n {\pi^2} \right) \\
> &= \frac{n(1- \pi)/\pi}{(1-\pi)^2} + \frac n {\pi^2} \\
> &= \frac{n}{\pi^2(1-\pi)} \\
> \\
> \therefore Var(\tilde \pi) &= \frac{\pi^2(1-\pi)}{n} \\
> \widehat {Var(\tilde \pi)} &= \frac{\hat \pi^2(1-\hat \pi)}{n} \\
> se (\tilde \pi) &= \sqrt{\frac{\hat \pi^2(1-\hat \pi)}{n}} 
> 
> \end{align*}
> $$

#### Confidence Interval

- the radius of the of confidence interval is 
  $$
  \text{radius of confidence interval} \approx \frac{2} {\sqrt{\text{information}}}
  $$

- the confidence interval then is 
  $$
  \begin{align*} 
  CI &= \hat \theta \pm z_{b} \cdot se(\tilde \theta) \\
  &= \hat \theta \pm z_b \frac 1 {\sqrt I}
  
  \end{align*}
  $$
  
  - $b$ would be 0.975 for 95% interval
    - can use standard normal distribution 
  - compute $se(\tilde \theta)$ carefully when there's a multiple observation



## Chapter 5: Maximum Likelihood Estimation - Several Parameters

### 5.2: Maximum Likelihood Estimate 

> Example: Normal distribution - ML estimates
>
> Recall: Let $Y \sim N (\mu, \sigma^2)$
> $$
> f_Y(y \mid \mu, \sigma^2) = \frac 1 {\sqrt{2 \pi} \sigma} \exp\left(-\frac 1 {2\sigma^2}(y-\mu)^2 \right) ~~~~~~~~ (-\infty < y < \infty)
> $$
> So the joint likelihood of n independent random sample is
> $$
> \begin{align*}
> f_{Y_1, \ldots, Y_n} (y_1, \ldots, y_n \mid \mu ,\sigma) &= \prod \frac 1 {\sqrt{2 \pi} \sigma} \exp \left(- \frac 1 {2 \sigma^2} (y_i - \mu)^2 \right) \\
> &= \frac{1}{(2\pi)^n/2} \left(\frac{1}{\sigma^2}\right)^{n/2} \exp \left(-\frac 1 {2\pi^2} \sum^n_{i=1} (y_1-\mu)^2 \right) \\
> \\
> \ln f_{Y_1, \ldots, Y_n} (y_1, \ldots, y_n \mid \mu ,\sigma) &= 
> -\frac n 2 \ln(2\pi) - \frac n 2 \ln(\sigma^2) - \frac 1 {2\sigma^2} \sum^n_{i=1} (y_i - \mu)^2
> 
> \end{align*}
> $$
> If individual data points $y_i$ not available, we can use the sample mean $\bar y$ and sample standard deviation s
> $$
> \begin{align*}
> \sum^n_{i=1} (y_i - \mu)^2 = (n-1)s^2 + n(\bar y - \mu)^2 ~~~~~ \text{ use as given}
> 
> \end{align*}
> $$
> <u>Finding estimates for $\mu$</u>: derive with resepct to mu
> $$
> \begin{align*}
> \frac \partial {\partial \mu} \ln f_{Y_1, \ldots, Y_n} (y_1, \ldots, y_n \mid \mu ,\sigma^2) &= \frac 1 {\sigma^2} \sum^n_{i=1}(y_i - \mu) = 0 \\
> \sum^n_{i=1}(y_i - \mu) &= 0 \\
> \left (\sum^n_{i=1}y_i\right) - n \mu &= 0\\
> \hat \mu &= \frac{\sum^n_{i=1}y_i}{n} \\
> &= \frac{n \bar y}{n}\\
> &= \bar y
> \end{align*}
> $$
> <u>Finding estimate for $\sigma^2$</u>
> $$
> \begin{align*}
> \frac \partial {\partial (\sigma^2)} \ln f_{Y_1, \ldots, Y_n} (y_1, \ldots, y_n \mid \mu ,\sigma^2) &= - \frac n {2 \sigma^2} + \frac 1 {2 \sigma^4} \sum^n_{i=1} (y_i -\mu)^2 = 0
> \\
> \widehat{\sigma^2} &= \frac 1 n \sum_{i=1} ^n (y_i -\mu)^2 \\
> &= \frac 1 n \sum^n_{i=1}(y_i - \bar y) ^2 ~~~~~~ \text{ since } \hat \mu = \bar y 
> 
> \end{align*}
> $$
> If we wanted to check that the claimed ML estimate do maximize - you need to look at Hessian - matrix of second derivative wrt all parameters including the mixed ones



### 5.3: Large Sample Biasedness of ML Estimators

- provided certain regularity conditions, ML estimators of several parameters still enjoy large-sample properties described in chapter 4

> Example: Normal distribution: unbiasedness of ML estimators
>
> <u>Unbiasedness for $\tilde{\mu}$</u>: as $\tilde \mu = \bar Y$, this is familiar, proven before that this is unbaised 
>
> <u>Unbiasedness for $\tilde{\sigma}^2$</u>: a little more complicated
>
> Recall, that sample variance $S^2$ is an unbiased estimator of $\sigma^2$, shown
> $$
> \begin{align*}
> E(S^2) &= E \left(\frac 1 {n-1} \sum^n_{i=1} (Y_i - \bar Y)^2 \right) \\
> &= \sigma^2 \\
> \therefore E \left(\sum^n_{i=1} (Y_i - \bar Y)^2 \right) &= (n-1) \sigma^2 &\text{via linearity of expectations}
> \end{align*}
> $$
> With that, the ML estimator has the expectation 
> $$
> \begin{align*} 
> E( \tilde \sigma^2) &= E\left(\frac 1 n \sum^n_{i=1} (Y_i - \bar Y)^2 \right) \\
> &= \frac 1 n E \left(\sum^n_{i=1} (Y_i - \bar Y)^2 \right) \\
> &= \frac{n-1}n \sigma^2 \\
> 
> 
> 
> \end{align*}
> $$
> So $\tilde{ \sigma}^2$ is biased, more particularly, the bias is 
> $$
> E(\tilde{\sigma}^2) - \sigma^2 = -\frac {\sigma^2}n
> $$
> Which goes to zero as $ n\rightarrow \infty$ so $\tilde {\sigma}^2$ is approximately unbiased for large n
>
> <u>Summary:</u> $\tilde \mu$ unbiased for any sample size, $\tilde \sigma^2$ is unbiased for large sample only 



### 5.4: Large-Sample Variances and Covariances of ML Estimator

- with many param, you need extensions to methods in 4.5, consider:

  - how to define information for estimating all of param
  - how to convert information into variances (and covaranices) of parameter estimator

- observed information matrix will require the hessian $H_f$ below:

  |  Variable  |                            $\mu$                             |                          $\sigma^2$                          |
  | :--------: | :----------------------------------------------------------: | :----------------------------------------------------------: |
  |   $\mu$    | $(1,1) =  \dfrac{\partial^2}{\partial \mu^2} f_Y(y \mid \mu, \sigma^2)$ | $(1,2) = \dfrac{\partial^2}{\partial \mu\partial \sigma^2 }f_Y(y \mid \mu, \sigma^2) $ |
  | $\sigma^2$ | $(2,1) = \dfrac{\partial^2}{\partial \sigma^2 \partial \mu} f_Y(y \mid \mu, \sigma^2)$ |      $(2,2) = \dfrac{\partial^2}{\partial(\sigma^2)^2}$      |

  - note: the actual observed information matrix $\mathcal I$ will be the negative of the Hessian above  

- Fischer information matrix:  
  $$
  \mathcal{I}_1 = E(I_1) ~~\text{ where $I_1$ is the observed information matrix }
  $$

- covariance matrix:
  $$
  Cov(\mu, \tilde \sigma^2) \approx \frac 1 n \mathcal I_1^{-1} (\mu, \sigma^2) \\
  $$
  that is the every cell of the Fischer information matrix is inversed and divided by n

> <u>Example:</u> Normal distribution - covariance matrix of ML estimators 
>
> Recall log likelihood of a Normal for a single function is 
> $$
> \ln f_Y(y \mid \mu, \sigma^2) = - \frac 1 2 \ln(2\pi) - \frac 1 2 \ln(\sigma^2) - \frac 1 {2\sigma^2}(y - \mu)^2
> $$
> The <u>observed information matrix</u> from a single observation for estimating parameters $\theta = (\mu, \sigma^2)$
> $$
> \begin{align*}
> 
> \mathcal{I}(\mu,\sigma^2)&=
> \begin{bmatrix}
> -\dfrac{\partial^2}{\partial\mu^2} \ln f_Y(Y \mid \mu, \sigma^2) & -\dfrac{\partial^2} {\partial \mu \partial(\sigma^2)} \ln f_Y(Y \mid \mu, \sigma^2) \\
> 
> -\dfrac{\partial^2}{\partial \mu \partial(\sigma^2)}\ln f_Y(Y \mid \mu, \sigma^2) &
> -\dfrac{\partial^2}{\partial(\sigma^2)^2} \ln f_Y(Y \mid \mu, \sigma^2)
> 
> \end{bmatrix} \\\\
> &= 
> \begin{bmatrix}
> \dfrac{1}{\sigma^2} &&  \dfrac{Y - \mu}{\sigma^2}^2 \\
> \dfrac{Y - \mu}{\sigma^2}^2 && \dfrac 1 {2(\sigma^2)^2} - \dfrac{(Y - \mu)^2}{(\sigma^2)^3}
> 
> \end{bmatrix}
> 
> \end{align*}
> $$
> The Fisher information takes the expectations of the negative second derivatives, so we take negative expectation of the matrix (realistically, cells $(1,1)$ and $(2,2)$ are the only ones we're looking for)
>
> Note that $E(Y - \mu) = 0$ and $E[(Y - \mu)^2] = Var(Y) = \sigma^2$
> $$
> \therefore \mathcal I _1{(\mu, \sigma^2)} = 
> \begin{pmatrix}
> \dfrac 1 {\sigma^2} & 0 \\
> 0 & \dfrac 1 {2(\sigma^2)^2}
> 
> \end{pmatrix}
> $$
> And we have that the approximate "covariance matrix" is
> $$
> \begin{align*}
> Cov(\mu, \tilde \sigma^2) &\approx \frac 1 n \mathcal I^{-1} (\mu, \sigma^2) \\
> \begin{bmatrix}
> Var(\tilde \mu) &Cov(\tilde \mu, \tilde{\sigma}^2) \\
> Cov(\tilde \mu, \sigma^2) & Var(\tilde{\sigma}^2)
> \end{bmatrix}
> 
> &\approx 
> \begin{bmatrix}
> \dfrac{\sigma^2}{n} & 0 \\
> 0 &\dfrac{2 \sigma^4}{n}
> 
> \end{bmatrix}
> \end{align*}
> $$
> Note that most covariance matrix will not end up being a diagonal matrix
> It's called the covariance matrix but not actually just covariance
>
> Thus, we have
> $$
> \begin{align*}
> Var(\tilde \mu) &\approx \frac{\sigma^2}{n}\\
> Var(\tilde {\sigma}^2) &\approx \frac{2\sigma^2}{n}
> 
> \end{align*}
> $$
> Of course this is usually estimated and thus we need to plug in $\widehat{\sigma^2 }$



## Chapter 6: Bayesian Estimation

- like ML, Bayesian statistical methods constitute another general approach to estimation of parameters 
  - also use probability model for the data via likelihood
  - but Bayesian treats parameters of interests as RV 
- in Bayesian paradigm, what is known/unknown about the value of a parameter is characterized by another probability model
  - use has to specify a <u>prior</u> distribution prior to collecting the data 
  - prior combined with likelihood from data to give posterior 
- Bayesian gives credible interval - which has a clear interpretation as a probability statement 
  - mathematically straightforward 

### 6.2: Bayes' Rule

- recall: let Y and Z be continuous/discrete RV, then the conditional distribution of Z given Y can be written
  $$
  \begin{align*}
  
  f_{Z\mid Y}(z \mid y) &= \frac{f_Z(z) \cdot f_{Y\mid Z} (y \mid z)}{f_Y(y)}\\
  \\
  \text{where } f_Y(y) &= 
  
  \begin{cases}
  \sum_Z~ f_Z(z) f_{Y\mid Z}(y \mid Z) &\text{Z is discrete} \\
  \\
  \int ~f_Z(z) f_{Y\mid Z}(y \mid Z) &\text{Z is continuous }
  \end{cases}
  
  \end{align*}
  $$

- then it follows almost immediately that we have 
  $$
  f_{Z \mid Y} (z \mid y) = \frac{f_{Y,Z} (y, z)}{f_Y(y)}
  $$

  - where $f_{Y,Z}$ is the joint distribution 
  - note that all the terms involved are treated as random variables (condition, marginal, joint are all distributions)



### 6.3: Bayesian Posterior Distribution of a Parameter

- let $Y$ be a RV with a PMF/PDF, $f_{Y\mid \Theta}(y \mid \theta)$ which depends on parameter $\theta$

  - the true $\theta$ value is unknown and we represent uncertainty about it by thinking of a random variable $\Theta$ with a distribution over all possible values of $\theta$

- Bayes' Rule (statistical inference): Let $Y$ be a discrete or continuous random variable sampled from PMF or PDF $f_{Y\mid \Theta} (y \mid \theta)$ where $\theta$ is a parameter to be estimated

  - discrete or continuous RV $\Theta$ represent the uncertainty about the unknown value $\theta$. 

  - given a marginal (prior) distribution $p_\Theta (\theta)$ for $\Theta$, the conditional (posterior) distribution of $\Theta$ given that $Y$ takes value $y$ is
    $$
    \begin{align*}
    p_{\Theta \mid Y}(\theta \mid y) &= \frac{p_\Theta(\theta)f_{Y\mid \Theta}(y \mid \theta)}{f_Y(y)} \\
    \\
    \text{where } f_Y(y) &= 
    \begin{cases}
    \sum_{\theta} ~p_\Theta(\theta) \cdot f_{Y\mid \Theta}(y \mid \theta) &(\Theta\text{ is discrete}) \\
    \\
    \int p_\Theta \cdot f_{Y \mid \Theta}(y \mid \theta) &(\Theta \text { is continous})
    \end{cases}
    
    \end{align*}
    $$

  - if the data are a sample of size $n$, $Y$ becomes $Y_1, \ldots, Y_n$ and $y$ becomes $y_1, \ldots, y_n$ everywhere in the theorem and the likelihood is then the joint likelihood of all the data, and the posteriors is similarly conditional on all the data

> Example: Binomial distribution - Bayesian estimation of $\pi$
>
> Represent $\pi$ as a RV $\Pi$. For a given value $\pi$, the binomial PMF/likelihood for fixed $n$ is 
> $$
> f_{Y \mid \Pi}(y \mid \pi) = {n \choose y} \pi^y (1-\pi)^{n-y}~~~~ (y = 0,1, \ldots, n;~~ 0 < \pi < 1)
> $$
> (note that we're not gonna make $\pi$ discrete here)
>
> And thus we keep the prior distribution $p_\Pi(\pi)$ general for now and we have
> $$
> \begin{align*}
> p_{\Pi \mid Y}(\pi \mid y) &= \frac{p_{\Pi}(\pi) {n \choose y} \pi^y (1- \pi)^{n-y}}{f_Y(y)}\\
> \\
> \text{where } f_Y(y) &= \int^1_0 p_{\Pi}(\pi) \cdot f_{Y \mid \Pi}(y \mid \pi)~d \pi \\
> &=\int^1_0 p_\Pi(\pi) \cdot {n \choose y} (\pi ^y) (1-\pi)^{n-y}~~d\pi
> 
> \end{align*}
> $$
> note that $f_Y(y)$ is just the numerator but taken with respect to $\pi$

- picking the prior

  - as the possible values for $\pi$ are continuous on (0,1) the prior must be a PDF also supported on this range - the Beta distribution satisfy this
    $$
    p_\Pi = \frac{1}{B(a,b)} \pi^{a -1} (1-\pi)^{b-1}~~~~ (a > 0;~ b> 0; ~0 < \pi <1)
    $$

  - Beta distribution is very flexible - by adjusting $a$ and $b$ we can generate a variety of shapes for the prior


> Example: Binomial distribution - Estimating $\pi$
>
> Plugging our Beta distribution into equation above, we get
> $$
> \begin{align*}
> p_{\Pi \mid Y}(\pi \mid y) &= \dfrac{\frac{1}{B(a, b)}\pi^{a-1}(1-\pi)^{b-1} \cdot {n \choose y} \pi^y (1-\pi)^{n-y}}{f_Y(y)} \\
> &= \dfrac{\frac{1}{B(a,b)} {n \choose y} \pi^{a + y - 1} (1-\pi)^{b+n-y-1}}{f_Y(y)}
> \end{align*}
> $$
> note: $f_Y(y)$ can be obtained by integrating the numerator with respect to $\pi$
>
> Since the posterior is a PDF for $\Pi$, we only need to worry about terms that involve $\pi$, we write
> $$
> p_{\Pi \mid Y} (\pi \mid Y) \propto \pi^{a + y -1} (1 - \pi)^{b+n-y-1}
> $$
> <u>ignoring any constant, including $f_Y(y)$</u> which does not depend on $\pi$
>
> We see $p_{\Pi \mid Y}(\pi \mid y)$ has the form of a new beta distribution with parameters $a+y$ and $b+n - y$. Hence the fully specified beta posterior for $\Pi$ is $Beta(a +y, b + n-y)$ and has PDF
> $$
> p_{\Pi\mid Y} (\pi \mid y) = \frac 1 {B(a+y, b+n-y)} \pi^{a + y -1} (1-\pi)^{b+n-y-1}
> $$
> If we want to use the posteriors mean as an estimate of $\pi$, then we can find that quite easily (since E of a Beta is known) via the formula
> $$
> E(\Pi \mid y) = \frac{a+y}{(a+y) + (b+n-y)} = \frac {a+y}{a+b+n}
> $$

- note that the binomial is also in the Beta family (i.e it's a Beta with special parameters)

  - when the posterior and prior have the same family of distribution - we say they are conjugate - usually makes calculations a lot easier (likely don't have to calculate the denominator)
  - <u>computations get hard when they are not conjugate</u>

- <u>General Bayes' Rule</u>: you can generally write the theorem above as 
  $$
  \underbrace{p_{\Theta \mid Y}(\theta \mid y)}_{\text{posterior}} \propto 
  \underbrace{p_\Theta(\theta)}_{\text{prior}} \times \underbrace{f_{Y \mid \Theta} (y \mid \theta)}_{\text{likelihood}}
  $$



### 6.4: Bayesian Credible Interval

- analogous to a confidence interval, we can find a Bayesian credible interval 

> Example: HIV vaccine - Bayesian credible interval for $\Pi$
>
> Doing the math in the example in the book, the posterior is $Beta(52, 8147)$ distribution and we want to find an interval containing $\Pi$ with 95% probability (i.e a Bayesian 95% credible interval)
>
> We can do this via
> `qbeta(0.025, 52, 8147)` &rightarrow; gives 0.0047
> `qbeta(0.0975, 52, 8147)` &rightarrow; gives 0.0082
>
> Therefore we have the interval of $[0.0047, 0.0082]$ &rightarrow; this agrees with confidence interval result from MLE method from couple chapters ago

- interpretation: with credible interval we can say that "<u>probability of the true parameter falling within this range is x%</u>"

- different priors give different credible interval

  - as the sample size grows, priors affect the end credible interval less and less

  

### 6.5: Normal Distribution (Multiple Parameter)

- if you need to do Bayes for Normal, check book page...
  - **TODO**
  - the other cases can be found in the book page 209/392 onwards




### <u>6.6: Priors</u>

- example regarding the binomial, we used a beat prior for the parameter $\pi$ and that lead to a beta posterior - it is a conjugate prior 

- table below summarizes conjugate priors for some important distributions 

  - for multivaraible case (like Normal) we have prioirs for either one ($\mu \text{ or } \sigma$) given that one of them is known

- priors that are flat are called uninformative priors

- sometimes experts would weigh in on priors selection - called a subjective prior

  <img src="C:\Users\kevin\AppData\Roaming\Typora\typora-user-images\image-20211101214327981.png" alt="image-20211101214327981" style="zoom: 67%;" />	



### 6.7: MLE vs Bayes

- advantage to Bayesian paradigm is that you have flexibility to make inference about further quantities of interest once we found posterior of unknown parameter 
- pg 215
- ML estimation often use mathematical approximation for large samples
  - approximation are better the larger the sample
- Bayes estimation depends on the prior
  - prior has less influence the larger the sample
- choice of model (likelihood) typically has much more influence (on both)
- interpretation of credible interval and confidence interval very different
- in real life scenario, if you can do both - that's ideal (but this is not always possible)
- cases where Bayesian inference is advantageous 
  - when prior information is viewed as critical (expert, related work from the literature)
  - the parameter of interest is not easy to write as vector (i.e estimation of graphs, trees, combinatorial objects)
    - why this is a problem for frequentist approach: almost always need a CLT, not always obvious how get a CLT in these spaces (but there is work on that)
    - in contrast, extending Bayesian approaches to these more complicated example is more straightforward
- case where frequentist inference is advantageous
  - computation: beyond conjugacy, Bayesian methods can be computationally prohibitive compared to frequentist methods

  - model misspecification: if you suspect that the model is mis-specified, frequentist statistics have more tools to deal with it (sandwich estimator)



## Chapter 7: Hypothesis Testing

### 7.2: What is Hypothesis Testing

- a null hypothesis, usually denoted $H_0$ is assertion - can be true or false
  - usually customary to introduce an alternative hypothesis, $H_a$ as well
- statistical hypothesis testing weighs evidence for $H_0$ versus evidence for $H_a$ 
  - evidence mean data - assumed to be generated from some probability distribution 
- note that $H_0$ is never true or accepted from the data 
  - we can only use language like "$H_0$ is not rejected"



### 7.3: Intro and Definitions

- we will define some terms, but the terms relates to the frequentist, repeated-sampling view rather than Bayesian

- null hypothesis, $H_0$: corresponds to a "null" situation (no action is required, there's no difference in the parameter value from a baseline, etc)

  - ex. from the pork disease example
    	$H_0: \pi \leq 0.01$ (batch is acceptable)

- alternative hypothesis, $H_a$: is a negation of $H_0$

  - often, it's the outcome of more interest to the investigation (implying some action is required, there is a difference from a standard baseline)
  - ex. $H_a: \pi > 0.01$ (the batch is unacceptable and is scrapped/inspected)

- <u>simple hypothesis</u>: completely defines the likelihood of the data by specifying exactly the value(s) of the parameter(s)

  - ex. $H_0: \pi = 0.01$. The binomial likelihood can be calculated numerically for any $y$ seen in the sample 

- <u>composite hypothesis</u>: a composite hypothesis does not define a unique value for the likelihood

  - ex. $H_0: \pi \leq 0.01$, where 0.01 is the largest acceptable defect rate. Even for fixed data, $y$, the likelihood will change under $H_0$ as $\pi$ changes from 0 to 0.01. The likelihood is a function of $\pi \leq 0.01$, not a simple scalar quantity 

- test statistics: summary computed from data that's used to test $H_0$ vs $H_a$ 

  - usually a summary of sample data like the sample mean or total 
  - ex. the number of defective items, $y$, is the obvious test statistics for comparing $H_0$ and $H_a$

- decision rule: a rule that leads to either reject $H_0$ or not, based on data via a test statistics 

  - formally, for data $y$, which could be a sample of $n$ values, $d(y)$ takes values 0 or 1 to mean "do not reject the null" and "reject the null", respectively
  - note: if $Y$ is regarded as a random variable, $d(Y)$ is also random

- rejection region: set of values of test statistics that lead to rejecting $H_0$

  - specifying decision rule is same as specifying rejection region

- <u>type I error</u>: if $H_0$ is true, but we reject $H_0$ inm favour of $H_a$

- <u>type II error</u>: the possible error of not reject $H_0$ when $H_0$ is false

  <img src="https://mat117.wisconsin.edu/wp-content/uploads/2014/12/section9-6.png" alt="3. Type I and Type II Errors" style="zoom:50%;" />	

- <u>significance level</u>: probability over repeated samples of a Type I error, often denoted by $\alpha$

  - sometimes called the "size" of the test 

  - we want a test to have a small significant level 

  - example: significance level is 
    $$
    \begin{align*}
    Pr(\text{Type I error}) &= Pr(\text{Reject } H_0 \mid \pi = \pi_0) = Pr(d (Y) = 1 \mid \pi = \pi_0) \\
    &= Pr(Y \geq c \mid \pi = \pi_0)
    
    \end{align*}
    $$

- <u>power</u>: probability over repeated samples of correctly rejecting $H_0$ (so rejecting when it's false)

  - is the probability of <u>not making a type 2 error</u>

  - a test will ideally have large power

  - example: the power is
    $$
    \begin{align*} 
    Pr(\text{Reject} H_0 \mid \pi = \pi_a) &= Pr(d(Y) = 1 \mid \pi = \pi_a)\\
    &= Pr(Y \geq c \mid \pi = \pi_a)
    
    \end{align*}
    $$

- an important feature of hypothesis test is that, for a fixed sample size, there's a trade of between $P(\text{Type I Error})$ and $P(\text{Type II Error})$ &rightarrow; <u>reducing one increases the other</u> 

- if you need exam, see final class notes

 

### 7.4: Tests Based on Likelihood Ratio 

#### Neyman-Pearson Lemma

- the lemma establishes the optimality of tests based on the likelihood ratio (LR)

  - optimality is in the sense of having max power to reject the null when it's false for given significance level
  - result is for simple hypotheses but can be extended to 1-sided hypotheses

- let data value $y$ arise from PMF/PDF $f_Y(y\mid \theta)$ where $\theta$ is the parameter of the distribution - as a function of $\theta$, this is the likelihood function

  - if data is from a sample size $n$, we replace the PMF/PDF with a joint likelihood $f_{Y_1 ,\ldots, Y_n}(y_1, \ldots, y_n \mid \theta)$

  - consider testing the simple hypothesis
    $$
    H_0: \theta = \theta_0 ~\text{ versus } ~ H_a: \theta = \theta_a
    $$
    where $\theta_0$ and $\theta_a$ are specific values of $\theta$. The NP lemma says that <u>reject $H_0$ if and only if</u>
    $$
    \frac{f_Y(y \mid \theta = \theta_a)}{f_Y (y \mid \theta = \theta_0)} > c
    $$
    is the best possible test of these two <u>simple hypotheses</u>

  - and by construction, it also has 
    $$
    Pr(d(Y)  = 1 \mid \theta = \theta_0) =  \alpha
    $$
    where $d(Y)$ is the decision function (1 = reject $H_0$) and $\alpha$ is the significance level

- <u>important: how to determine $>$ or $<$</u>

  - if the LR is a monotonically increasing function with regards to the test statistics (i.e if the test statistics goes up, so does the LR), then we do $Pr(\text{test stat} > c) = \alpha$
  - if the LR is monotonically decreasing with respect to test statistics, we do $Pr(\text{test stat} <c) = \alpha$
    - i.e reject if test stat less than $c$


  > Example: Exponential distribution - test of simple hypotheses 
  >
  > Recall: exponential distribution has PDF 
  > $$
  > f_Y(y \mid \lambda) = \lambda e^{-\lambda y}
  > $$
  > For a random sample of n observations, joint PDF or likelihood is 
  > $$
  > f_{Y_1, \ldots, Y_n} (y_1, \ldots, y_n \mid \lambda) = \lambda^n e^{-\lambda \sum^n_{i=1}y_i}
  > $$
  > Suppose we want to test
  > $$
  > H_0: \lambda = \lambda_0 ~\text{ versus }~ H_a: \lambda = \lambda_a
  > $$
  > where $\lambda_0$ and $\lambda_a$ are constants. Then the NP Lemma says that test should be based on LR and we reject $H_0$ if and only if
  > $$
  > \begin{align*}
  > \frac{f_{Y_1, \ldots, Y_n} (y_1, \ldots, y_n \mid \lambda_a) }{f_{Y_1, \ldots, Y_n} (y_1, \ldots, y_n \mid \lambda_0)} &= \frac{\lambda_a^n e^{-\lambda_a \sum^n_{i=1} y_i}}{\lambda_0^n e^{-\lambda_0 \sum^n_{i=1} y_i}} \\
  > &= \left(\frac{\lambda_a}{\lambda_0}\right)^n e^{-(\lambda_a - \lambda_0) \sum^n_{i=1}y_i}\\
  > &\geq c
  > 
  > \end{align*}
  > $$
  > <u>Note that everything aside from $\sum^n_{i=1}y_i$ is a constant</u>. 
  >
  > Suppose that $\lambda_a < \lambda_0$ (this is usually given) then the larger the value of $\sum^n_{i=1}y_i$, the larger the value of the LR. This monotonic relationship implies that <u>we can consider $\sum_{i=1}^n y_i$ as the test statistics for testing $H_0$ vs. $H_a$</u>
  >
  > Just how large test statistics need to be to reject $H_0$ determined by significance level, we want to make sure that under the null, the probability that test statistics exceeds a given critical value is the significance level, $\alpha$
  >
  > Recall that sum of IID exponential is a Gamma distribution, thus, <u>under the null</u>, we have 
  > $$
  > \sum^n_{i=1} Y_i \sim Gamma(\nu = n, \lambda = \lambda_0)
  > $$

  > Example: Exponential distribution - simple hypotheses (with numbers)
  >
  > Suppose we are testing the example where $n = 100 $ and $\bar y = 250$ and
  > $$
  > H_0: \lambda = 0.01 \text{ vs } H_a: \lambda = 0.008
  > $$
  > Under the null hypothesis, tests statistics has distribution
  > $$
  > \sum^{100}_{i=1} Y_i \sim Gamma(\nu = 100, \lambda  =0.01)
  > $$
  > We want to find c such that (<u>notice we assume under the null</u>)
  > $$
  > Pr\left(\sum^{100}_{i=1} Y_i > c \mid \lambda = 0.01 \right) = 0.05
  > $$
  > In R, that's `qgamma(0.95, shape = 100, rate = 0.01)` and that gives $c =11,700$ (noticed we used 0.95)
  >
  > Also note here that `qgamma` or other `q`functions will give $Pr(X \leq a) = c$, in this case we are looking for strictly less than 0.95 (but it does not matter since gamma is continuous) - if this was a discrete variable, you'd have be careful with the bounds
  >
  > This means that under the null, there's a probability of 0.05 of obtaining value of the test statistic of 11,700 or more. Such values of the test stat are called reject region/critical region bc they lead to rejecting $H_0$
  >
  > From our example, we are saying <u>we will reject if the sample sum exceeds 11,700</u>
  > $$
  > \sum^{100}_{i=1}y_i = n \bar y = 100 \times 250 = 25,000
  > $$
  > and the null is easily rejected
  >
  > Note: $\lambda_a$ did not play a big role, all we needed to know was that $\lambda_a < \lambda_0$ to finesse the test statistics 

#### Composite Hypotheses

- turns out NP framework can accommodate 1-sided alternative 

  - i.e tests of the form
    	$H_0: \theta = \theta_0$ vs $H_a: \theta < \theta_0$
    	$H_0: \theta = \theta_0$ vs $H_a: \theta > \theta_0$
  - what matter is the ratio of $\theta_a/\theta_0$ and if that makes the LR monotonically increasing/decreasing with respect the test statistics, so approach to determining a decision rule is the same

- 2 sided tests (i.e $H_0: \theta \neq \theta_0$) 

  - put half of the significance level in each tail 
  - no "most powerful" test - use GLR (7.5) below instead 

  > Example: Exponential distribution - 2-sided test
  >
  > Continuing from last example, but extending to 
  > $$
  > H_0: \lambda = 0.01 ~~~ \text{ vs } ~~~ H_a: \lambda \neq 0.01
  > $$
  > For the following case,
  > $$
  > H_0: \lambda = 0.01 ~~~ \text{ vs } ~~~ H_a: \lambda < 0.01
  > $$
  > the most powerful test (for this significance level) as we know is to reject $H_0$ if $\sum^{100}_{i=1}y_i > 11,700$
  >
  > But for this case,
  > $$
  > H_0: \lambda = 0.01 ~~~ \text{ vs } ~~~ H_a: \lambda > 0.01
  > $$
  > we can do the same steps and work out that we should reject $H_0$ iff $\sum^{100}_{i=1}y_i < 8,414$
  >
  > <u>So, there is not 1 good most powerful test</u> 
  >
  > Common approach is to make a single test against $H_a: \lambda \neq 0.01$ by combining two 1-sided tests, for a total signincace level of 5%, we put 2.5% in each tail of the gamma distribution and reject $H_0$ if and only if 
  > $$
  > \sum^{100}_{i=1} y_i < 8,136 ~~~ \text{ or } ~~~ \sum^{100}_{i=1} y_i > 12,053
  > $$
  > `qgamma(0.025, shape = 100, rate =0.01)`$=8,136$
  > `qgamma(1-0.025, shape = 100, rate = 0.01)`$= 12,053$
  >
  > Note that this is still not the most powerful test



### 7.5: Generalized likelihood ratio tests

- LR test in 7.4 essentially only considered simple hypotheses, where $H_0$ and $H_a$ each specify the likelihood completely with respect to the unknown parameters 

- generalization of the LR concept moves beyond limitations

  - consider the likelihood $f_{Y_1, \ldots, Y_n}(y_1, \ldots, y_n \mid \theta)$ from a sample size $n$, where $\theta$ is one or more parameters of interest and we want to test
    $$
    H_0: \lambda \in \theta_0 ~~~ \text{ vs }~~~ H_a: \lambda \in \theta_a
    $$
    where $\theta_0$ and $\theta_a$ are sub-regions of the possible $\theta$ values

    - $\theta_0$ and $\theta_a$ best thought of as sets, which allow for multiple values of $\theta$

- GLR statistics formula: so we have the 
  $$
  \begin{align*}
  GLR &= \dfrac{\max_{\theta \in \theta_0 \cup \theta_a} f_{Y_1, \ldots, Y_n}(y_1, \ldots, y_n \mid \theta)}
  {\max_{\theta \in \theta_0} f_{Y_1, \ldots, Y_n}(y_1, \ldots, y_n \mid \theta)}
  
  \end{align*}
  $$

  - typically, $\theta_0 \cup \theta_a$ includes all value of $\theta$ (since we're testing the negation)

> Example: Normal distribution - justification of the t-stat
>
> Let $Y \sim N(\mu, \theta^2)$ and we take random sample of $n$ independent draws, $Y_1, \ldots, Y_n$ leading to data $y_1, \ldots, y_n$. The joint likelihood is
> $$
> f_{Y_1, \ldots, Y_n} (y_1, \ldots, y_n \mid \mu, \sigma^2) = \dfrac{1}{(2\pi)^{n/2}} \left(\dfrac{1}{\sigma^2}\right)^{n/2} \exp \left( - \frac{1}{2\sigma^2} \sum^n_{i=1}(y_i - \mu)^2\right)
> $$
> And we want to test
> $$
> H_0: \mu = \mu_0 ~~~ \text{ vs } H_a: \mu \neq \mu_0 
> $$
> with $\sigma^2$ unknown and unrestricted by either hypothesis
>
> blah blah copy from HW (**TODO**)
>
> <u>When testing for $\mu$</u> , $\dfrac{\bar y -\mu_0}{\sqrt{(s^2 \text{ or } \sigma^2)/n}}$ is the test statistics
>
> If $\sigma^2$ is known, it follow $N(0,1)$
>
> If $\sigma^2$ is unknown, use $s^2$ (sample variance) and use t-statistics
>
> <u>Decision rules:</u> 
>
> $t$ on the LHS here means the test statistics, while t on the RHS is the t-distribution 
>
> <img src="C:\Users\kevin\AppData\Roaming\Typora\typora-user-images\image-20211122231421991.png" alt="image-20211122231421991" style="zoom:80%;" align = "left" />
>
> Read pg. 256 if you want to learn more

- <u>Wilks statistics (for 2 sided tests)</u>: it states that 
  $$
  W = 2 \ln \left(\dfrac{f_{Y_1, \ldots, Y_n} (Y_1, \ldots, Y_n \mid \theta = \tilde \theta) }
  {\max_{\theta \in \theta_0} f_{Y_1, \ldots, Y_n}(Y_1, \ldots, Y_n \mid \theta)} \right)
  $$
  where $\tilde \theta$ is the ML estimator

  - based on some fancy theory, we know that **$W \sim \chi^2_d$ under the null**. $d$ is the difference in number of independent parameters in $\theta$ when $\theta$ is unrestricted and the number of parameter in $\theta_0$ when constrained by $H_0$

  - <u>so you plug MLE estimate $\hat \theta$ into the numerator, and leave $\theta_0$ in the denumerators</u>
  
  - it's also known as the deviance when written in log subtraction form
    $$
    deviance = W = 2\left( \ln f_{Y_1, \ldots, Y_n}(Y_1, \ldots, Y_n \mid \theta = \tilde \theta)  - \max_{\theta \in \theta_0} \ln f_{Y_1, \ldots, Y_n} (Y_1, \ldots, Y_n \mid \theta) \right)
    $$
  
  - <u>decision rule</u>: reject $H_0$ if $W > \chi^2_{d, 1 -\alpha}$



### 7.9: Connections with Confidence Interval

- you can create a $100(1-\alpha)$% confidence interval and reject/not reject the null from that 

  - for 2-sided test (with Normal distribution) of $\mu$ with unknown $\sigma^2$
    $$
    CI: \bar Y \pm \frac s {\sqrt N} t_{n-1, \alpha /2}
    $$

    - reject if your <u>sample mean (test statistics)</u> fall out of this interval

  - 1-sided left-tail test ($H_a: \mu < \mu_0$)
    $$
    \text{Upper bound: }\bar Y + \frac{s}{\sqrt{N}} t_{n-1, 1-\alpha}
    $$

    - <u>reject if sample mean is bigger than this upper bound</u>
    - notice the alpha isn't split in half

  - 1-sided right-tail test ($H_a: \mu > \mu_0$)
    $$
    \text{Lower bound: } \bar Y - t_{n-1, \alpha} \frac s{\sqrt n}
    $$



### Webwork stuff (p-value)

- p-value tells us whether there's an effect from the population and it's not just from luck

  - low p-value means that, assuming the null hypothesis is true, there's a very low likelihood this outcome was a result of luck
    - low-p means the result was significant 
  - high p-value means, assuming the null hypothesis is true, the outcome was very likely 

- <u>p is low, null must go</u>

- <u>formal definition</u>: p-value is the probability of obtainting a sample <u>more extreme</u> than the one you observed

- we are usually given some $\alpha$ value (usually $\alpha = 0.05$)

  - if the p-value is lower than this, we will reject the null

- p-value also equals the smallest significance level at which $H_0$ is rejected

- <u>how to calculate p-value</u>

  - it's "under the null, how likely (probability) is a value as extreme as your test statistics"

  - as extreme here depends on the $H_a$

    - ex. $H_a: \theta < \theta_0$ where the test statistics $ts = 0.01$ and $ts \sim \chi^2_1$ (i.e Wilk's) then the p-value is computed from

      ​	`p_val <- pchisq(0.01, 1, lower.tail = TRUE) ` (since we're doing less than 0.01)

    - ex. $H_a: \theta > \theta_0$ where the test statistics $ts = 0.01$ and $ts \sim \chi_2^2$ then the p-value is

      ​	`p_val <- pchisq(0.01, 2, lower.tail = FALSE)`

  - for 2-sided tests, if you're using Wilk's statistics - then it's always a right tail test (`lower.tail = FALSE`)

  - 2-sided test: if distribution is symmetric (i.e t, Normal) then you can do 2 * probability you obtain a sample less than the one you observed

- usual steps

  - assume the null is true
  - do measurements and get a statistics 
  - work out the p-value
    - aka work out how lilkely it is to get a result like this if the null hypothesis was true
    - if p-value is very small, then our original idea must have been wrong so we reject the null

> Example: From this [video](https://www.youtube.com/watch?v=eyknGvncKLw&t=273s) 
>
> This lady claims that her chocolate bars has 70g of nuts in them, customers says she be scamming. So she grabs 20 bars and test that the mean weight of nuts in them is 70g and the significance level is 0.05
> $$
> H_0: \mu = 0.70~~~ \text{ vs } ~~~ H_a: \mu < 0.70
> $$
> She gets her sample, does the weighing and get that $\mu = 68.7$ - now this could be due to the fact that some bars had less and some had a lot more in them 
>
> She gets the p-value of 0.18 (don't know how she did it but)
>
> So this is not enough evidence for her to reject her null 
>
> If the p-value was small we say that the result was significantly different from the null



## Chapter 8: Analysis of Categorical Data

### 8.1: Multinomial Distribution

- multinomial is a generalization of the binomial

  - binomial has two states (i.e yes/no), multinomial distribution used for frequency data where each observations falls into one of $k$ categories

- formula: say we have $k$ mutually exclusive and exhaustive categories

  - objects in a random sample of size n are assigned to them

  - $Y_1, \ldots, Y_k$ are the frequencies in the sample for each category

  - we say $Y_1, \ldots, Y_k$ follow a muitlnomial distribution if the PMF is
    $$
    f_{Y_1, \ldots, Y_k} (y_1, \ldots, y_k \mid n, \pi_1, \ldots, \pi_k) = {n \choose {y_1, \ldots, y_k}} \pi_1^{y_1} \ldots \pi_k^{y_k}\\
    \left(y_i = 0,1, \ldots, n;~ \sum^k_{i=1} y_ = n;~ 0 < \pi_1 < 1;~ \sum^k_{i=1}\pi_i = 1 \right)
    $$

  - can also be written as 
    $$
    {n \choose{y_1, \ldots, y_k}} = \frac {n!}{\prod^k_{i=1} y_i!}
    $$

- <u>because the frequencies are constrained to the sum $n$, $Y_i$ are dependent random variables</u>

  - ex. if you know $Y_1, \ldots Y_4$ and you know $n$ and $k = 5$, you can get $Y_5$
  - makes analysis more complicated

- note that if we collapse all cateogries except $i$ for one to make two cateogries (in $i$ and not), then we have the binomial, and thus 
  $$
  E(Y_i) = n\pi_i~~~~~~ Var(Y_i) = n\pi_i(1 - \pi_i)
  $$



### 8.2: Maximum Likelihood Estimation

- compute ML estimates of $\pi_1, \ldots, \pi_k$ without any constraints other than that they are probabilities summing to 1 not always this constraint

  - log likelihood is
    $$
    \ln f_{Y_1, \ldots, Y_k}(y_1, \ldots, y_k \mid n, \pi_1, \ldots, \pi_k) =
    \ln {n \choose {y_1, \ldots, y_k}} + y_1 \ln(\pi_1) + \ldots + y_k \ln(\pi_k)
    $$

  - we want to maximize the log likelihood subject to the contraint 
    $$
    \sum^k_{i=1} \pi_i = 1
    $$

  - need Lagrange multiplier $\lambda$ for the constraint and maximize
    $$
    \ln f_{Y_1, \ldots ,Y_k}(y_1, \ldots, y_k \mid n, \pi_1, \ldots, \pi_k) - \lambda \left( \sum^k_{i=1}(\pi_i) - 1 \right)
    $$

  - derivative with respect to $\pi_i$ (the sum ended up like that because the $\pi_i$ are not equal and we're only deriving with respect to one of them at a time)
    $$
    \frac{\partial}{\partial \pi_i} \left[\ln f_{Y_1, \ldots ,Y_k}(y_1, \ldots, y_k \mid n, \pi_1, \ldots, \pi_k) - \lambda \left( \sum^k_{i=1}(\pi_i) - 1 \right) \right] = \frac{y_i}{\pi_i} -\lambda
    $$

  - setting the derivative to 0 implies 
    $$
    \begin{align*}
    \hat \pi_i &= \frac{y_i}{\lambda} \\
    &\propto y_i
    \end{align*}
    $$

  - <u>to make $\hat \pi_i$ sum to 1</u> (**important**)
    $$
    \hat \pi_i = \frac{y_i}{\sum^k_{i=1}y_i} = \frac {y_i}{n}
    $$

  > Example: Geotyping - multinomial distribution
  >
  > We are looking for at the frequencies of the XX, XY and YY frequencies 
  >
  > <img src="C:\Users\kevin\AppData\Roaming\Typora\typora-user-images\image-20211124123407226.png" alt="image-20211124123407226" style="zoom:80%;" align = "left" />
  >
  > Therefore, based on the ML method above, the unconstrained ML estimates of the three probabilities 
  > $$
  > \hat \pi_{XX} = \frac{55}{180} = 0.3056, ~~~ \hat \pi_{XY} = \frac{95}{180} = 0.5278,~~~ \hat\pi_{YY} = \frac {30} {180} = 0.1667
  > $$
  >
  >
  > Next, we estimate the probabilities if Hardy-Weinberg principle applies. Let $\theta$ be propoertion of X's in population, so proportion of Y must be $1 -\theta$ of the Y's. The Hardy Weinberg principle states that
  > $$
  > \pi_{XX} = \theta^2, ~~~ \pi_{XY} = 2\theta(1-\theta), ~~~ \pi_{YY} = (1-\theta)^2
  > $$
  > assuming random mating, getting 2 X or 2 Y is $ (\text{probability of getting one})^2$ while there's 2 ways of getting XY (get X from mom or get X from dad).
  >
  > Thus, under the Hardy-Weinberg constraint, log likelihood looks like
  > $$
  > \begin{align*}
  > LL &= \ln {n \choose {y_1, y_2, y_3}} + y_1\ln(\pi_1) + y_2 \ln(\pi_2) + y_3\ln(\pi_3) \\
  > &= \ln {n \choose {y_1, y_2, y_3}} + y_1 \ln(\theta^2) + y_2 \ln(2\theta(1-\theta)) + y_3 \ln((1-\theta)^2) \\
  > &= \ln {n \choose {y_1, y_2, y_3}} + 2y_1 \ln(\theta) + y_2 \ln(2) + y_2 \ln(\theta) + y_2 \ln (1-\theta) + 2y_3 \ln(1-\theta) \\
  > &= \ln {n \choose {y_1, y_2, y_3}} y_1\ln(2) +(2y_1 + y_2) \ln(\theta) + (y_2 + 2y_3)\ln(1-\theta)
  > \end{align*}
  > $$
  > Since the single parameter $\theta$ is unconstraint, no need for Lagrange multiplier. Set derivative to 0 gets you
  > $$
  > \begin{align*}
  > \frac{\partial}{\partial \theta} \ln f_{Y_1, Y_2, Y_3} ( y_1, y_2, y_3 \mid n, \theta) &= 
  > \frac{2y_1 + y_2}{\theta}- \frac{y_2 + 2y_3}{ 1- \theta} = 0\\
  > \hat \theta &= \frac{2y_1 + y_2}{2n}\\
  > &= \frac{2 \times 55 + 95} {2 \times 180} = \frac{205}{360}\\
  > &= 0.5694~~~ \text{ using numbers from table above}
  > 
  > 
  > \end{align*}
  > $$
  > This would give use the estimates of the three genotype as
  > $$
  > \begin{align*}
  > \hat \pi_1(\hat \theta) &= \hat \theta ^2 = 0.3243\\
  > \hat \pi_2(\hat \theta) &= 2 \hat \theta(1 -\hat \theta) = 0.4904 \\
  > \hat \pi_3(\hat \theta) &= (1 -\hat \theta)^2 = 0.1854
  > 
  > \end{align*}
  > $$
  > Notice the two results aren't that far off, the data is somewhat compatible with the principle, we will carry out hypothesis test later



### 8.3: Hypothesis Tests for the Multinomial Distribution 

#### Generalized likelihood ratio test

- multinomial ditsribution with $k$ categories has $k$ parameters, $\pi_1, \ldots, \pi_k$ (though only $k-1$ of them are free to vary as they need to sum to 1). GLR method can deal with several params and a wide variety of null hypothesises 

  - the hypothesis test we'll carry out are of the form
    $$
    H_0: (\pi_1, \ldots, \pi_k) \in \pi_0 ~~~\text{ vs }~~~ H_a:(\pi_1, \ldots, \pi_l) \not \in \pi_0
    $$
    where $\pi_0$ is a set of restricted values for $\pi_1, \ldots, \pi_k$

- Wilk's stiatstic can be written in a simple form for the multinomial 

  - unrestricted ML estimator are 
    $$
    \tilde \pi_i = \frac{Y_i}{n}
    $$

  - through mad proofs (see final review), you have that, for the mutlnomial: 
    $$
    {W} = 2 \sum^k_{i=1} Y_i \ln \left(\frac{Y_i}{E_i} \right)
    $$

  - to test $H_0$, W is <u>compared with critical values of the chi-square distribution</u> 

    - recall W under $H_0$ is only approximately $\chi^2$
    - approximation will be good if expectation should be at least 5
    - reject if W is bigger than critical value of chi-square

  - on degree of freedom: to decide df for the null $\chi ^2$ distribution, count the change in free parameters among $\pi_i$ when $H_0$ is imposed versus when it's not

  > Example: Inheritance - test of Mendel's ratio
  >
  > Some mfs collected some data regarding flower colour (purple vs red) and pollen shape (long vs round) of pea plants. So there are 4 combo of flower colours + shapes - we'll treat as 4 categories 
  >
  > <img src="C:\Users\kevin\AppData\Roaming\Typora\typora-user-images\image-20211126125603760.png" alt="image-20211126125603760" style="zoom: 67%;" align = "left"/>
  >
  > So we have $k = 4$ categories. Mendel's ratio (not covered) predict that the frequencies are expected to be in a 9:3:3:1 ratio. In terms of our multinomial model, Mende's ratio imply the following null
  > $$
  > \begin{align*}
  > H_0&: \pi_1 = \frac 9 {16}, ~~~ \pi_2 = \frac 3 {16},~~~ \pi_3 = \frac 3 {16}, ~~~ \pi_4 = \frac 4 {16} \\
  > H_a &: H_0 \text{ does not hold}
  > 
  > \end{align*}
  > $$
  > See calculation for Wilk's statistics in table above
  >
  > <u>Expected frequencies are easy</u>. For example, null hypothesis states $\pi_1 = 9/16$, so the estimate of the expected frequencies is $e_1 = n \cdot \pi_1 = 2132 \cdot 9/16 = 1199.25$ (the rest is computed as above)
  >
  > Degree of freedom for the approximate $\chi^2$ test: under $H_0$, there is no free parameter. Under $H_a$, there are 3 free parameters (know 3 then you know the last). Therefore the $\chi^2$ test should have 3 - 0 = 3 &rightarrow; $\chi_3^2$
  >
  > With this knoweledge you can cary out hypothesis testing - either by figuring out thcirtical value and comparing it with $W$ (`qchisq(1-alpha, df)`) or find the p-value `pchisq(W, df, lower.tail = FALSE)` 


**DO CANCER EXAMPLE FROM CLASS (TODO)**

**DO WEBWORK 6 QUESTION 4 (TODO)**

#### Webwork Example (R Code)

> Webwork 6, Question 4
>
> ACTUALLY A SEVERAL MULTINOMIAL CASE
>
> Testing amount of sodium excreted each day via urine sample and see how many people die due to CVD. Amount of sodium in urine sample made into cateogires 
>
> <img src="C:\Users\kevin\AppData\Roaming\Typora\typora-user-images\image-20211217115610825.png" alt="image-20211217115610825" style="zoom:67%;" />	
>
> The null hypothesis is that chances of death by CVD are the same in each of the seven levels
> $$
> H_0: p_1 = p_2 = \ldots = p_7~~~ \text{  vs } ~~~ H_a: \text{not } H_0
> $$
> Note that because we have the number of cases of each column, each column is a Binomial which makes finding the expected value of each column a bit different (<u>this is not quite a straight multinomial, rather a combination of binomial (?)</u>)
>
> <u>Computing the test statistics</u>:
>
> Under $H_0$, we say that there' equally likely chance of death. So we made 
> $$
> p_1 = \dfrac{\text{total number of deaths}}{\text{total number of cases}} = \dfrac{2042}{28880}
> $$
> Here, the expected number for each category is $ e_i = \text{number of case (in the category i) } \times p_1$
> $$
> \begin{align*}
> e_1 &= p_1 \times 818 \\
> e_2 &= p_1 \times 2654 \\
> &\ldots \\
> &
> \end{align*}
> $$
> Then you calculate Wilk's or Pearson's statistics, via R code below
>
> <u>Finding the degree of freedom</u>:
>
> In this experiment, we did not find $n$ number of people to record, but rather found $n_i$ people for category $i$ then recorded who died (<u>?</u>), so there are no restrictions that the $p_i$ have to sum up to 1 (**TODO: ask TA why**)
>
> Thus, under $H_0$, there are 1 free parameter ($p_1$)
> Under $H_a$, there are 7 free parameters 
>
> Then you can find the critical value/p-value of a $\chi^2_6$ for a 5% significance level

How to do the above in R (my way and TA's way)

```R
# MY WAY
size <- c(818, 2654, 5699, 14156, 3380, 1326, 847)
observed <- c(86, 219, 408, 892, 227, 119, 91)

prop <- sum(observed) / sum(size)
expected <- prop * size # this gives you an vector of expected values

wilks <- 2 * sum(observed * log(observed / expected))
pearson <- sum((observed - expected)^2 / expected)
# those 2 values above can now be your test statsitics
# TODO: why the fuck is the pearson wrong 

critical_val <- qchisq(0.95, 6)
p_value <- pchisq(wilks, 6, lower.tail = FALSE) # Pearson sinstead of Wilk's works as well

# TA'S WAY (gives Pearson's statsitcs)
size <- c(818,2654,5699,14156,3380,1326,847)
x <- c(86,219,408,892,227,119,91)
sodium <- matrix(c(x, size-x), byrow = TRUE, nrow = 2)
chisqtest <- chisq.test(sodium)

critical_Val <- chisqtest$statistic
p_value <- chisqtest$p.value

```



#### Pearson's Statistics

- there's a statistics made by this guy named Pearson's that preceded Wilk's and even ML
  $$
  X^2 = \sum^k_{i=1} \frac{(Y_i - E_i)^2}{E_i}
  $$

  - under $H_0$, $X^2$ again is approximate $\chi^2$ distributed under the conservative rule of thumb that all expected frequencies are at least 5
  - degree of freedom is the same as Wilk's statistics
  - this was easier to compute because it avoided the log
  - <u>again we just compare the $X^2$ to the critical value of $\chi^2$ and reject if $X^2$ is bigger</u>
    - or we can compare p value to the significance level as well



### 8.4: Goodness of Fit Tests

- we use the test above to check if the observed data follows a distribution 
  - when the question doesn't specify the value for the parameter of the distribution under the null - we pick the ML estimate


>Example: Faults on data lines - goodness of fit test
>
>Table gives the frequencies for number of faults in data-transmission lines 
>
><img src="C:\Users\kevin\AppData\Roaming\Typora\typora-user-images\image-20211126134735646.png" alt="image-20211126134735646" style="zoom:50%;" align = "left" />
>
>Let the observed fault are independently drawn from a distribution $D$ with a mean $\mu$. The hypothesis test is
>$$
>H_0: D \text{ is  } Pois(\mu) ~~~ vs ~~~ D_a: D \text{ is not a Poisson distribution}  
>$$
>The null hypothesis does not specify the Poisson parameter $\mu$. We are "free to pick $\mu$", but we want to pick something that best fit the data. So <u>we picked the ML estimate</u>
>$$
>\hat \mu = \frac{\sum^n_{i=1} y_i}{n} = \frac{23}{24} = 0.958
>$$
>So column 4 and 5 of the table above is calculated using $\hat \mu = 0.958$
>	ex. $f_X(0 \mid \mu = 0.958) = (e^{-0.958}(0.958)^0) / 0! = 0.384$ so $e_0 = 0.384 \times 24 = 9.2$
>
>Recall our rule of thumb that the frequencies should be at least 5 in each category is violated in all but the first. So we combine the categories for now $i=3$ to mean $x \geq 2$. We get the new table where $k =3$ 
>
><img src="C:\Users\kevin\AppData\Roaming\Typora\typora-user-images\image-20211126135324722.png" alt="image-20211126135324722" style="zoom: 67%;" align = "left" />
>
>
>
>Degree of freedom: with $k=3$, the unrestricted category probabilities (or rate) have $3-1 = 2$ degrees of freedom (they have to all add up to 1). 
>Under $H_0$, they all depend on $\mu$ (every category has the same rate), so 1 df. 
>The difference is $2 -1 =1 \therefore X^2 \sim \chi^2_1$
>
>Let $\alpha = 0.05$. The critical value of the chi squared is `qchisq(0.95, 1) = 3.84` and our $X^2$ value of 0.15 does not exceed that so we do not reject. 



## Chapter 9: Comparative Studies

- here we're concerned with comparisons of rival methods
  - ex. experiemntal medical treatment compared with existing treatment
  - some sample techniques for estimation and hypothesis testing can often be readily adapted to comparisons using data for two samples

### 9.1: Independent Versus Paired Samples

- generic setup

  - randomly sampled observation from population A is ditsributed $f_Y(y \mid \theta_A)$ and randomly samples observation from population B sampled $f_Y(y \mid \theta_B)$
    - ex. we have two Poisson distribution involved, with $\theta_A$ and $\theta_B$ are their district Poisson mean param
  - we characterize the difference between the two distributions as $\theta_A -\theta_B$
    - <u>then an obvious estimate is $\hat \theta_A - \hat \theta_B$</u>
    - here $\hat \theta_A$ uses data from population A, and $\hat \theta_B$ based on random sample from population B
    - each of the two estimates can be found from maximizing the likelihood, the Bayesian posterior, etc

- if we want to obtain a confidence interval for $\theta_A - \theta_B$, the variance of the estimator is important 

  - think of $\tilde \theta_A$ and $\tilde \theta_B$ as estimator with values varying over repeated samples 

  $$
  Var(\tilde \theta_A - \tilde \theta_B) = Var(\tilde \theta_A) +Var(\tilde \theta_B) - 2Cov(\tilde \theta_A, \tilde \theta_B)
  $$

  - the specific methods of this chapter falls into 2 types, depending on Cov (independent or not)

  - if estimator $\tilde \theta_A$ and $\tilde \theta_B$ are statistically independent, then their covariance is 0, so 
    $$
    Var(\tilde \theta_A - \tilde \theta_B) = Var(\tilde \theta_A) +Var(\tilde \theta_B)
    $$

    - will be the case if two samples of the population is independent of each other, see 9.2

  - if they're not independent, we have to use general variance formula

    - ex. clinical trial to compare drugs A and B, subjects are given drug A for a bit then drug B, there is an obvious dependence since the pairs were tested on a single subject

- dependence often deliberately designed into a study with paired data to increase accuracy (Estimation) or power (hypothesis testing)

  - the potential for improvement comes from making covariance bigger (thus meaning smaller variance)



### 9.2: Two Independent Samples

- sampling from normal distribution is special - see later

#### Likelihood Methods

- we'll be using examples to show method from Chapter 4 and Chapter 7 applies when comparing independent samples

> Example: Faults on data lines - comparison of Poisson Means
>
> <img src="C:\Users\kevin\AppData\Roaming\Typora\typora-user-images\image-20211129141804458.png" alt="image-20211129141804458" style="zoom:80%;"  align = "left"/>
>
> Previous analysis of these samples, treating them individually, assuming the number of faults observed is a random sample from a $Pois(\mu)$ distribution (we'll say $\mu_{22}$ for the 22km sample and $\mu_{170}$ for the other). We assume the samples are drawn independently of each other
>
> From past exercise we figured out that ML estimates Poisson mean is $\hat \mu_{22} = 0.25$ with standard error 0.0791. Similar calculation shows that $\hat \mu_{170} = 2.41$ with standard error 0.3765. All info can be found in table above
>
> Suppose we want to estimate the difference in the Poisson mean between the two population, the obvious estimate is using the ML estimate
> $$
> \begin{align*}
> 
> \delta &= \mu_{170} - \mu_{22} \\
> \hat \delta &= \hat \mu_{170} - \hat \mu_{22} \\
> &= 2.41 - 0.25 = 2.16
> 
> \end{align*}
> $$
> If you think of $\tilde \delta$ as an estimator varying across repeated (pairs of) samples, its statistical properties are as follows 
>
> <u>Expectation (unbaisedness)</u>: You can easily prove that $E(\tilde \mu_{170}) = \mu_{170}$ and same with the other one under the assumption we're making (Poisson distribution in each case). So both estimators are individually unbiased, it's trivial to show that their difference is unbiased
> $$
> E(\tilde \delta) = E(\tilde \mu_{170} - \tilde \mu_{22}) = E(\tilde \mu_{170}) - E(\tilde \mu _{22}) = \mu_{170} - \mu_{22} = \delta  
> $$
> <u>Variance</u>: two samples assumed to be independently drawed from respective population so $\tilde\mu_{22} $ and $\tilde \mu_{170}$ are also statistically independent, thus their covaraince is 0
> $$
> Var(\tilde \delta) = Var(\tilde \mu_{170} - \tilde \mu_{22}) = Var(\tilde \mu_{170}) + Var(\tilde \mu_{22})
> $$
> which can be estimated using numbers in table above 
> $$
> \begin{align*}
> \hat Var(\tilde \delta) &= \hat Var(\tilde \mu_{170}) + \hat Var(\tilde \mu_{22}) = 0.14176 + 0.00625 = 0.14801\\
> se(\tilde \delta) &= \sqrt {0.14801} = 0.385
> 
> \end{align*}
> $$
> <u>Distribution</u>: estimators of each $\mu_k$ is of the form $(\sum ^n_{i=1}Y_i)/n$ where $Y_i$ are IID poison random variable, from the properties of the Poisson distribution, the sum $\sum^n_{i=1}Y_i$ is also Poisson. 
> Recall that you can use asymptotic normality of the ML estimator (Poisson approximated by Normal), so we can say the difference between 2 Normal distribution is also Normal
> $$
> \tilde \delta \sim N (\delta, \hat Var(\tilde \delta))
> $$
> where there are 2 approximations here: (1) the normal distribution is a large-sample approximation; and (2) the true variance has been estimated based on sample data
>
> <u>Confidence Interval</u>: you can construct an approiximate interval for $\delta$ via
> $$
> \hat \delta \pm z_{1-\alpha/2} \cdot se(\tilde \delta)
> $$
> So for example, a 95% confidence interval would be 
> $$
> 2.16 \pm 1.96 \times 0.385 = 2.16 \pm 0.75 = [1.41, 2.91]
> $$
> In other words, we are 95% confident that 170 km have between 1.41 and 2.91 more faults per line 
>
> If you were to test out $\delta = 0$ or similarly, $\mu_A = \mu_B$ then you can see if 0 falls within the 95% confidence interval, otherwise, if you need the distribution, the test statsitics is 
> $$
> t = \dfrac{\mu_A - \mu_B} {\sqrt{\dfrac{S_A^2}{n_A} +\dfrac{S_B^2}{n_B}}} \sim t_{n_A + n_B - 2}
> $$

#### Methods for the Normal Distribution 

- problem considered here is to compare means of two normal distributions

  - we have a sample of $n_A$ observations independently drawn from $N(\mu_A, \sigma^2_A)$ distributions

  - similarly, there are $n_B$ observations independently drawn from $N(\mu_B, \sigma^2_B)$ distributions

  - let the difference of mean of interest be 
    $$
    \delta = \mu_A - \mu_B
    $$

  - to estimate $\delta$ we use the estimator
    $$
    \tilde \delta = \tilde \mu_A - \tilde \mu_B = \bar Y_A - \bar Y_B
    $$
    because the ML estimator of the mean of the Normal is the sample mean

- general variance of a difference in two estimators become
  $$
  Var(\tilde \delta) = Var(\tilde \mu_A) + Var(\tilde \mu_B) = \frac{\sigma^2_A}{n_A} + \frac{\sigma^2_B}{n_B}
  $$

  - "trivial" to show that $\tilde \delta$ is an unbiased estimator of $\delta$

  - also trivial to show that $\bar Y_A$ and $\bar Y_B$ are normal RV

  - thus, their difference $(\bar Y_A - \bar Y_B)$ is also normally distribution, so 
    $$
    \tilde \delta \sim N \left(\delta, \frac{\sigma^2_A}{n_A} + \frac{\sigma^2_B}{n_B} \right)
    $$
    the approaches now diverge at this point, depending on what we know about $\sigma^2_A$ and $\sigma^2_B$
    NOTE: MLE of the mean of a Normal with known variance is the sample mean ($\hat \delta$ in this case)

- <u>known variance</u>

  - if $\sigma_A^2$ and $\sigma_B^2$ are known, then $Var(\tilde \delta)$ above can be calculated and we can do the normal calculations for CI or hypothesis test 
  - thought this is rarely the case that we know them
  - <u>the test statistics is just $\hat \delta$</u> and it'll follow a Normal distribution 

- <u>unknown variance, assumed equal</u> 

  - most common approach is to assume they share the common value $\sigma^2$ 
    $$
    \begin{align*}
    \tilde \delta \sim N \left(\delta, \sigma^2 \left(\frac 1 {n_A} + \frac 1 {n_B} \right) \right) \\
    \text{or, } \dfrac{\tilde\delta -\delta}{\sigma \sqrt{\frac 1 {n_A} + \frac 1 {n_B}}} \sim N(0,1)
    \end{align*}
    $$

  - to estimate $\sigma^2$, we combine the two sample variance into the following pooled sample variance
    $$
    S^2_p = \dfrac{(n_A - 1)S^2_A + (n_B - 1)S^2_B}{n_A - 1 + n_B - 1}
    $$

    <u>where $S_A^2$ is the sample variance from sample A</u>
  <u>don't forget to multiply it back into $(1/n_A + 1/n_B)$</u> after you find $\sigma^2$
    
  - distribution of $S^2_p$ is another $\chi^2$ distribution, 
    
      First, $S_{A \text{ or } B}^2$ has distribution
      $$
      \begin{align*}
      \frac{(n_A -1) S^2_A}{\sigma^2} \sim \chi^2_{n_A -1}~~~~~~~~\frac{(n_B -1) S^2_B}{\sigma^2} \sim \chi^2_{n_B -1}
      
      
      \end{align*}
      $$
      sum of independent $\chi^2$ RV with df $d_A$ and $d_B$ is $\chi^2$ with df $d_A + d_B$, thus 
      $$
      \begin{align*}
      S^2_p = \dfrac{(n_A - 1)S^2_A + (n_B - 1)S^2_B}{n_A - 1 + n_B - 1} \sim \chi^2_{n_A - 1 + n_B + 1} \\
      %\frac{(n_A -1 +n_B - 1)S^2_p}{\sigma^2} \sim \chi^2_{n_A -1 + n_B -1}
      
      \end{align*}
    $$
    
  - when we replace $\sigma$ in formula above, we have 
    $$
    \frac{\tilde \delta - \delta} {S_p(\sqrt{\frac 1 {n_A}+ \frac 1 {n_B}})} \sim t_{n_A -1  + n_B -1} \\
    \\
    
  \frac{\tilde \delta - \delta} {se(\tilde \delta)} \sim t_{n_A -1  + n_B -1}
    $$
    and so the <u>t-distribution is the basis for confidence intervals and hypothesis tests for $\delta$</u>
    <u>Expression above (difference of delta/that shit) above is also the test statistics</u>, it follows t-distribution (see example)

- unknown variances, not assumed equal 

  - if unknown variances are not assume not be equal, then $Var( \tilde \delta)$ estiamted using 
    $$
    \frac{S_A^2}{n_A} + \frac{S^2_B}{n_B}
    $$
    so we have the standardized random variable 
    $$
    \frac{\tilde \delta - \delta}{\sqrt{\frac{S_A^2}{n_A} + \frac{S^2_B}{n_B}}}
    $$
    this has an approximate t-distribution but the degree of freedom formula is rather messy, usually, using the pooled sample variance approach will give similar results

> Example: TV advertisements - comparison of normal means
>
> A prof carries out an experiment on ability to recall TV ad. She made two versions on video, with the advertisement of interest positioned either first (F) or last (L) in the commercial break. Five classes of undergraduate students watched the F version and another 5 watched version L. At the end, students completed questionnaire and was scored using a recall average, see table below. We assume the five F and L scores are random samples from $N(\mu_F, \sigma^2)$ and $N(\mu_{L}, \sigma^2)$. Note that we're assuming the two distributions have the same variance 
>
> <img src="C:\Users\kevin\AppData\Roaming\Typora\typora-user-images\image-20211129153628464.png" alt="image-20211129153628464" style="zoom:80%;" align = "left"/>
>
> Let the following be the diffference in means of interest
> $$
> \delta = \mu_F - \mu_L
> $$
> To compute an approximate 95% confidence interval for the difference in mean recall index between F and L
> $$
> \bar y_F = 7.54 ~~\text{ and }~~ \bar y_L = 6.58\\
> s^2_F = 0.123 ~~\text{ and }~~ s^2_L = 0.202 \\
> \tilde \delta = \bar y_F - \bar y_L \rightarrow \hat{\delta}  =0.96
> $$
> The pooled estimator of $\sigma^2$ gives the estimate
> $$
> s^2_p = \frac{(n_F - 1)s^2_F + (n_L - 1)s^2_L }{n_F -1  + n_L - 1} = \frac {4s^2_F + 4s^2_L}{8} = 0.1625 = (0.403)^2
> $$
> Additionally, we have 
> $$
> se(\tilde \delta) = s_p \sqrt{\frac 1 {n_F} + \frac 1 {n_L}} = 0.403 \sqrt{\frac 1 5 + \frac 1 5} = 0.255 \\
> t_{8,0.975} = 2.31\\
> \tilde \delta \pm t_{8, 0.975} \cdot se(\tilde \delta) = [0.37, 1.55]
> $$
> We want to carry out a hypothesis test of 
> $$
> H_0: \delta = 0 ~~~ \text{ vs } ~~~ H_a: \delta \neq 0
> $$
> We need the following computations
> $$
> t = \text{ test stat } = \frac{\hat \delta - \delta_0}{ s_p \sqrt{\frac 1 {n_F} + \frac 1 {n_L}}} =\frac{\hat \delta}{se(\tilde \delta)} = \frac{0.96}{0.255} = 3.77
> $$
> 2-sided p-value is $2 \times Pr(t_s > 3.77) = 0.0055$ computed via `2 * pt(3.77, 8, lower.tail = FALSE)`
>
> So $H_0$ is rejected at significance level 0.01 but not 0.001



### 9.3: Several Independent Multinomial Samples

- <u>comparing parameters of 2 multinomial distribution</u> extends special methods in Chap 8 for cateogrical data

  - comparing several multinomial distribution via several intendent samples usually implemented as hypothesis test
  - <u>use for comparing 2 samples where they both have the same categories</u> 

- consider study of association beteween diabetes and consumption of sugar

  - two samples taken: 400 patients with diabetes (cases) and 600 patients with condition other than diabetes (control)

  - subjects surveyed on their past consumption of sugar - the supposed risk factor of interest in the study

  - this is a <u>retrospective case-control study</u> - because it's based on past behaviours

    - easy to conduct and collect data
    - see note at the end on drawing conclusions

  - we get the following table, there are 3 categories: low, medium, and high sugar intake

    <img src="C:\Users\kevin\AppData\Roaming\Typora\typora-user-images\image-20211204153715734.png" alt="image-20211204153715734" style="zoom:50%;" />	

  - let $\pi_{(1,1)}$ and $\pi_{(2,1)}$ and $\pi_{(3,1)}$ be the category of falling in the low, medium, and high sugar intake categories for a diabetes patient 

    - so makes sense that $\pi_{(1,1)}$ and $\pi_{(2,1)}$ and $\pi_{(3,1)}$ are probabilities for a multinomial with 3 categories 
    - similar logic for $\pi_{(1,2)}$ and $\pi_{(2,2)}$ and $\pi_{(3,2)}$

  - usual hypothesis test questiosn whehter the two multinomial have same probabilities
    $$
    H_0: \pi_{(1,1)} = \pi_{(1,2)};~ \pi_{(2,1)} = \pi_{(2,2)};~ \pi_{(3,1)} = \pi_{(3,2)} ~~~ \text{ vs } ~~~ H_a: \text{ not } H_0
    $$

  - under $H_0$, we have $\pi_{(1,1)} = \pi_{(1,2)}$, let's call $\pi_{(1,*)}$, similarly for the other two categories 

    - under $H_0$, the ML estimates of the common probabilities are 
      $$
      \hat \pi_{(1,*)} = \frac{170}{1000} = 0.170, ~~~ \hat \pi_{(2,*)} = \frac{343}{1000} = 0.343, ~~~ \hat \pi_{(3, *)} = \frac{487}{1000} = 0.487
      $$

    - this is because each row (category) can be seen as a Binomial (number of people with diabetes with rate $\pi$) 
      &rightarrow; MLE of $\tilde \pi$ for a Binomial is the sample proportion, $y/n$

  - now expected frequencies are just <u>$\text{total of that column} \times \text{row MLE} $</u>
    $$
    \begin{align*}
    e_{(1,1)} &= 400 \times \hat \pi_{(1,*)} = 400 \times 0.170 =  68\\
    e_{(1,2)} &= 600 \times 0.170 = 102 \\
    e_{(2,1)} &= 400 \times 0.343 = 137.2 \\
    & \ldots 
    
    \end{align*}
    $$

    - think about it as, we have $x$ number of people with debates, we expect p% of them to fall into the low category, so what is the number of people?
    - since the 2 samples are independent, you can do the same for the next one just with $y$ number of people without diabetes

  - now the Pearson statistics calculation 

    <img src="C:\Users\kevin\AppData\Roaming\Typora\typora-user-images\image-20211204155549295.png" alt="image-20211204155549295" style="zoom:67%;" />	

  - degrees of freedom: 

    - under $H_0$, there are 3 common probabilities, $\pi_{(1, *)}, ~ \pi_{(2,*)},~ \pi_{(3,*)}$ and only 2 can vary independently (think about it as you can pick $\pi_{(1,1)} = \pi_{(2,1)}$, and $\pi_{(2,1)}=\pi_{(2,2 )}$, then of course you know $\pi_{(3,1)} = \pi_{(3,2)}$)

    - under $H_a$, we have 6 probabilities, 4 of which can vary (think about it as you can pick 2 for the first columns, then another 2 for the second column since the last probability is always known)

    - so the df for the chi-sq test is $4-2 = 2$ degree of freedom

    - <u>general formula</u>: say there are $i$ rows and $j$ columns, a general formula for the degree of freedom is
      $$
      df = (i-1) (j-1)
      $$

  - p-value: `pchisq(pearson, 2, lower.tail = FALSE) = 0.008` where Pearson was 9.61

    - so chance that a chi-squared variable exceed 9.61 (our test statistics) is 0.008. So you would reject at a 1% confidence interval, anything above 1% you would reject as well
    - thus we can say: "Therefore, the null hypothesis of no difference between the probabilities of two multinomial distribution is rejected at the 1% significance level, which is taken as strong evidence against the null"
    - <u>the statistical significant association between diabetes and supposed risk factor, does not imply causation, since this is not a randomized clinical trial</u> 



### 9.4: Two-Way Contingency Table

- comparing several independent multinomial samples like in section 9.3 turns out to be equivalent to considering such data as a two-way contingency table

  - for instance, <u>suppose the frequencies in Table 9.4 were obtain by asking 1000 hospital patients if they have diabetes and their sugar intake, then putting them into respective categories</u> 

    <img src="C:\Users\kevin\AppData\Roaming\Typora\typora-user-images\image-20211204153715734.png" alt="image-20211204153715734" style="zoom:50%;" />	

    - but imagine we got the same numbers
    - as opposed to in 9.3, we looked for people with diabetes and people without, then asked them for their sugar intake level 

  - for this study, we could think of the two factors as generating 6 categories, where the categories have a $3 \times 2$ structure. This means that the 6 categories are indexed by two subscriptions: $i$ and $j$ - such data is called a contingency table - <u>treating this as one multinomial distribution with 6 categories (the 6 possible index)</u>

  - let's define the probability that a random patient falls in category $i,j$, called $\pi_{(i,j)}$
    $$
    \begin{align*}
    \pi_{(i,j)} &= Pr(\text{falling in row } i \cap \text{ falling in column } j) \\
    &= Pr(\text{sugar intake } i \cap \text{ diabetes status } j )
    \end{align*}
    $$
    where $i =  1,2,3$ is the sugar intake level low, medium and high and $j = 1 ,2$ for diabetes and control

  - usual null hpoythesis is phrased: "Are two factors independent?", mathematically, this means
    $$
    H_0: \pi_{(i,j)} = \pi_{(i,*)} \times \pi_{(*,j)}~~~ \text{for all (i, j)}
    $$
    where $\pi_{i, *}$ and $\pi_{(*,j)}$ are marginal probabilities of falling into that row/column. The hypothesis is saying 
    $$
    \begin{align*}
    \pi_{(i,j)} 
    &= Pr(\text{sugar intake } i \cap \text{ diabetes status } j ) \\
    &= Pr(\text{sugar intake } i) \cdot Pr(\text{ diabetes status } j ) 
    \end{align*}
    $$

  - key step is now to find expected frequencies under $H_0$. Think of the the marginal as "probability of falling into that row" or "probability of falling into that column"
    $$
    \begin{align*}
    \hat \pi_{(1, *)} &= \frac{170}{1000},~ \hat \pi_{(2,*)} = \frac{343}{1000}, ~\hat \pi_{(3, *)} = \frac{487}{1000} \\
    \hat \pi_{(*,1)} &= \frac{400}{1000}, ~ \hat \pi_{(*, 2)} = \frac{600}{1000}
    
    \end{align*}
    $$
    so thus we need to find the MLE estimate for every row, under the null, it states $\pi_{i,j} = \pi_{(i,*)} \times \pi_{(*,j)}$
    $$
    \begin{align*}
    \hat \pi_{(1,1)} &= \hat\pi_{(1,*)} \cdot \hat \pi_{(*,1)} = \frac{170}{1000} \cdot \frac{400}{1000} \\
    \hat \pi_{(1,2)} &= \hat \pi_{(1, *)} \cdot \hat\pi_{(*, 2)} = \frac{170}{1000} \cdot \frac{600}{1000} \\
    & \ldots
    
    \end{align*}
    $$
    so for example, expected frequency for row 1 and column 1 is obtained from multiplying the MLE for that cell with the total sample size, 1000
    $$
    e_{(1,1)} = \hat \pi_{(1,1)} \times 1000 = \frac{170}{1000} \cdot \frac{400}{1000} \cdot 1000 = 68
    $$
    and we should get the same expected values for all the cells 

  - degree of freedom:

    - under $H_0$: the 3 row probabilities, $\pi_{(1,*)}, ~ \pi_{(2,*)}, ~ \pi_{(3,*)}$ must sum to 1 and similarly for the column probabilities. so there is $(3-1) +(2- 1) = 2 + 1 =3$ degree of freedom (<u>note that it is not always the case that they will ask for both row and column variables to sum to 1</u>)
    - under $H_a$: there are 6 probabilities $\pi_{(1,1)}, \pi_{(1,2)}, \ldots$ and they need to sum to 1. So there are 5 free variables
    - thus, our $\chi^2$ has $5 - 3 = 2$  degree of freedom 

  - we get the same test statistics, same result, blah blah blah

    - though in practice, collecting data in different ways lead to different data 
    - in this way of sampling, <u>the people with diabetes to begin with might be low - leading to lower power</u>
    - so based on how the data is sampled, pick the corresponding test



### 9.5: Paired Samples

- for some studies, comparing two methods is naturally implemented via paired-measurements
  - ex. tasting experiment of one brand of a drink versus another - it's natural to have each taster rate both drinks
- in general, there's two methods A and B (ex. two drinks or two algorithm) to be compared via a sample of $n$ <u>pairs</u> of observations
  - pair $i$ provides two measurements, $Y_{Ai}$ and $Y_{Bi}$, one for each method 
  - ex. we might have $n$ people, and a pair of observations (on A and B) comes from person $i$

#### Model for Difference Data

- a model for the sample of observations on method A is 
  $$
  \begin{align*}
  Y_{Ai} &= \mu_A + p_i + Z_{Ai} ~~~ (i = 1, \ldots, n)\\
  Y_{Bi} &= \mu_B + p_i + Z_{Bi} ~~~ (i = 1, \ldots, n) 
  \end{align*}
  $$
  where $\mu_A$ is the mean parameter for method A, $p_i$ is the effect of pair $i$ and $Z_{Ai}$ is a random error for the A measurement on pair $i$ 

  - the pair effects, $p_1, \ldots, p_n$ allow for variation between pairs of observations
    - ex. drink taster $i$ might tend to rate both drinks high, so his/her value of $p_i$ is positive, infalting both results in his/her observations 
  - there are many ways to model these effects, but we'll see it's not necessary to do so explicitly

- the difference in mean
  $$
  \delta = \mu_A - \mu_B
  $$
  is of interest. The analysis of the pair difference $Y_i = Y_{Ai} - Y_{Bi}$ provides simple and direct methods for estimation of $\delta$. First, let's write out the observed difference for pair $i$
  $$
  \begin{align*}
  Y_i = Y_{Ai} - Y_{Bi} &= (\mu_A + p_i + Z_{Ai}) - (\mu_B + p_i + Z_{Bi}) \\
  &= \mu_A - \mu_B + (Z_{Ai} - Z_{Bi}) \\
  &= \delta + Z_i
  
  \end{align*}
  $$
   where $Z_i = Z_{Ai} - Z_{Bi}$. There are some advantages to this modelling

  - pair effects $p_1, \ldots, p_n$ cancel and don't have to model those
  - <u>no need to model $Z_{Ai}$ and $Z_{Bi}$ within pairs &rightarrow; it will be commonly assumed that $Z_i$ is zero for all pairs</u>
  - <u>an obvious estimator of $\delta$ is $\bar Y$ - the sample mean of the $Y_i$'s</u>
  - under the assumption of all zero $Z_i$, $\bar Y$ is an unbiased estimator

- the sample mean of the difference $\bar Y$ is the difference in sample means of method A and B
  $$
  \bar Y = \bar Y_A - \bar Y_B
  $$

  - the <u>mean difference between data pairs is approximately normally distributed</u> 

- point: the estimator of $\tilde \delta$ is the sample mean of difference (which is normally distributed), therefore 
  $$
  \begin{align*}
  \hat \delta &= \bar y_{a-b} \\
  &\text{ where } Y_i \sim N\left(\delta, \sigma^2 \right)
  \\
  &\text{and  so }\bar{Y} \sim N \left(\hat \delta, \frac{\sigma^2}{n} \right)\\
  &\bar y\text{ usually acquired from data sample given}
  \end{align*}
  $$
  $se(\tilde \delta)= s/\sqrt{n}$ where $s$ is the sample standard deviation of the sample difference

  Then we also have that the test statistics is 
  $$
  \mathcal{test~stat} = \frac{\hat \delta - \delta_0}{se \left(\tilde \delta \right)} \sim t_{n-1}
  $$
  so we test p-value using the t-distribution (look for bigger than then times 2)

#### Estimation and hypothesis testing 

> Example: Protein constructs - estimation of mean difference 
>
> Experiment carried out to compare effects of 2 detergents, TWEEN and GLYCINE, on biological activity. 10 samples of protein constructs were prepared, all additives except detergent kept constant, each sample was divided into 2 sub-samples, and the two detergents were randomly assigned to the two sub-samples. Table below show the data
>
> <img src="C:\Users\kevin\AppData\Roaming\Typora\typora-user-images\image-20211205153918707.png" alt="image-20211205153918707" style="zoom:67%;" />	
>
> A model for the way the differences were generated is 
> $$
> Y_i = \delta + Z_i
> $$
> where $\delta$ is the mean difference in activity between the 2 samples and $Z_1, \ldots, Z_{10}$ (**says E in the textbook but I think it's Z**) are random samples from a distribution with mean zero and variance $\sigma^2$. If we take the normal probability model then (it's like a normal + a constant - which is delta in this case) with $\sigma^2$ as unknown 
> $$
> Y \sim N(\delta, \sigma^2)
> $$
> From the observed data (calculated by R I'm assuming), 
> $$
> \begin{align*}
> \hat \delta &= \bar y = 0.29 \\
> s &= 0.3957 \\
> se(\tilde \delta) &= \frac s {\sqrt n} = \frac{0.3957}{\sqrt {10}} = 0.1251
> 
> \end{align*}
> $$
> recall that MLE of the mean from the Normal distribution is the sample mean (**?? check**)
>
> As we have a single sample of differences - CI and hypothesis test follows same method for inference about the mean of a single normal distribution
>
> - 95% confidence interval (<u>use t-distribution</u>)
>   $$
>   CI = \hat \delta \pm t_{n-1,~ 0.975} \cdot se(\tilde \delta) = 0.29 \pm (2.262)(0.1251) = 0.29 \pm 0.28
>   $$
>
> - 2 - sided hypothesis test of $H_0: \delta = 0 ~~~ \text{ vs } ~~~ H_a: \delta \neq 0$
>   $$
>   t = \frac{\hat \delta - \delta_0}{se(\tilde \delta)} = \frac{0.29 - 0}{0.1251} = 2.318
>   $$
>   `pt(2.318, 9, lower.tail = FALSE)` in R yields 0.023 (probability of $t_9$ RV exceeding 2.318). For a 2-sided test, the p-value is $2 \times 0.023 = 0.046$ and so $H_0$ would just be about rejected at the 5% significance level

#### Statistical Advantages of Paired Data

- first, we've noted that for our model of the difference $Y_i = Y_{Ai} - Y_{Bi}$, the pair effect $p_i$ cancels
  - variation between the pairs due to variation in the $p_i$ - which might be considerable, is removed 
  - the variance of the estimator of $\tilde \delta$ results only from the random variability <u>within</u> pairs due to $Z_i$
- second, think of pair effect $p_i$ as inducing positive correlation between 2 observation in a pair
  - if $p_i$ is substnatial then both measurements will be driven up ($p_i>0$) or down ($p_i < 0$) 
  - so $Y_{Ai}$ and $Y_{Bi}$ will be positively correlated and there will be a positive covariance - thus reducing variance in the estimator of $\delta = \mu_A - \mu _B$

#### How to do in R

**see solution to webwork 6, question 2**