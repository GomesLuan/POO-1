import 'package:flutter/material.dart';

void main() {
  MaterialApp app = MaterialApp(
    title: 'Receita1',
    theme: ThemeData(
      primarySwatch: Colors.green, 
      fontFamily: 'Alkatra'
    ),
    home: Scaffold(
      appBar: AppBar(title: const Text('Receita1 - construção de objetos de interface gráfica')),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInImage.assetNetwork(
                placeholder: 'assets/Spinner.gif', 
                image: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACACAMAAAA2/Bc4AAABQVBMVEX///8Mi0j5xQD//wD/yAAAiUkAiUT8yAD8xgAAh0sAhjv/ygAAiEoAhz/5wwAAhkz4/PoAhTXx+PTu7u7I4tP/zgDg7+cAgUwAjUXPmwZ4dnm/vr8AgSv95qHbpQDyvgKsdgmRkJKko6XU6N2cm53rtwCcZQvEjwe5gwhpZmrT0tPj4+O1tLZwbnH//PHSuhqk0Lbrwwyhqyt0uJC52ca2siI/n2fj2Mvx7OTjrgD86K6NpDD724U6j0RkmTtFk0COw6NXqndznjfGtiDt9gxprTrR5hn6y0JjsITevxIpl1mBoTb98c3Ms5PHnVLDkS3IpWzSv6q8k1XNnSvLrYO+kDyQWAytglK+m2+yhDzaxKO+nn+vjW+teiT602P+9t95tzSdyym71yaSwDJJnjkAeFAAblSHq5dJfWNxl4JYZmFSY/cWAAAWS0lEQVRogbVai2La1rKVhEBCAiFesmRTAcYEYjsGAcImRC/wA4m4jvM4J23vieM8zj3n/v8H3LW3AJPEduM0nbQNBbGXZvbMmjVbMMxfNfXw/Nd26+LF5dFfXupPrXjeGimCLMtC03h5+BMXVg8PD9Wv3rt81RQELjZBMF/u/Syw81fmyHz1ev3+j96awBKUarOpyAAVFOP86/v5EVMP35pcsyoIVeN1cfnmZQtvCFWziX9a7VGV4DXf/PVwqr+aVdNoVREvufmKrle8/NWUBaFp1pqCUm42R4ZhNGWEc+12ftAOTaXKGcJye14fnr94NRJleNpuKgo3Msvt1qjVqrUUBLZ58YPuHSExSGIXa+fnLbO5yAd5BIyyIFdbNbPMCSOz+Y+a+cho/cNoPzKwf7L54keq4bJlmqbx5uUlgTz6Y7RAE8yWCR9a7ZqiKLJZNYxazaxWhWqzLLRqVYSz2np4tlwauHNRKMvVUat98eZVe+GcIrTIi2oNUR21W7VRu4x8wZ/qyJBHcA/uV9uXD9u+o5YslGHIBUEuy3K53CJwilBttwicIButR7Vas2WWmzSu1ZbZbo9a/3wD97hys/X2AftXfCPIzXYbKxvmqKoAkqu2FbhkmMaynsvGI5PjRgbXNs1m89HFo5dHL2u/MyhDXCfI5sX54fd5ePRrtTwyFENojkgCtB+1a/iD2JZbptFc8YdiGJxRuxjV2o/etGlGkfo/bFVlfKKUq+arF+eXe3+SNOo57r/VKo8EBVSBCi6bwkjhZKMK15bZQuGaj34zHzGXLy9/V9fWLL41SOrWjGa12hy1avd6ePRmJJutdrla5VpNo4myHslcU2lyTcNofYHGcc1X//z9liUOXxi4vFX77fXr17/fu4GHLbHaGhnVZrvZrJmtETavBqowWkar9ogy1JoJ3B1kdXT54teLN2/vDyJJxrJJfEOxmorBjUheoJaa1bZplFvYuq9MNl/etTHfUXW/lSkzgCjaZVM2hfaoNnpUNUD04F/uJkVW3iFX/vhR7r9smqM2N2o2ywZ2ymi9uTy//O2P1v80WxzC+5tiYA/XTUG+o9rOf6h3I3tHbfDRSBjVELfzWAEcHhbbb423b9pH52/PW8I6ntAmPFauGg+p5hWYMmqb6B/N5j+NN18ucEj/IV3UoN1TWTjXLqPCm2XZbJ8/DPDoFQeSrdaMfxlv1dd3bcbh4etXI9CaWRaoc+VmDZlkCgT1zoy5BewC3/uj/frl4eHlnRehlC7egDxq7X9djAhBgR+bcBENvPXq4sV3s/HRG+Nl7bB4fziOWiMoFJBj0zSM6gjVbTyqKk3BNBXzpfqA3Hx5caj+aSCOgFQDV756ZZjm6OL1EeBbYAKz9vr3B9XB4XfF/NeLt+cXbeOyeHR0RL9x9PrFOejpZ8rJGyPuHx2++HsWv8WKxb3dvb29vyquvsf29uuPF7a5s/u3Iqr7jx/Xt/bibCjubm8+3vlpavwWrM3dL9/a235c/3vwdjfpwgfPf3l3RuzZ0ytyC9uPt38+lrq9uYW/nj+rKgrP84qIf7mzXw4Q0frmz3avWK8jI56fiYSLx+5ctCZj0JVSfQa8/Se7f77CQ8A2Ea6rd4rYsUROcDv4M53YPJDF6lME+cnWz0BRC1qBgD3ZZ5inkJV8b8xz/KQzn+rC2OZ525nyyrsDZm8zhitphR8e4TR/mA8KxDOs9Uzhbc8SdIHje95E6LmeJVqO7ciWUr1awmmRHvjaj2AV+rqUn5Fb3YRn7xRZtl0vdD1b5CxB5ENO5Meu17P0ssI9Z/bivStEWUn3Hw5WYiU2OyOvdnYY5kwJ3SnnuF6H40VeJsZzYif0BD2cIpqAe0wzU2NTrDQsPBCsm0+xqYh4trUJzxC0qWe5lszzcmhPXHcy7giyyIWTcc+Z9Hjlil4Ha+gpNqs/DK4rsSxbKeHV3pMi9qwT9ti5E4qibHu5dJJYjh1bPG9xqbI94bnqAbMTl3kJcClW1brfjTgg38h38Uqt7zJPFcvrWL25LMqhl0uyS0uzNi+KkzlriaJyxjBP4ipvsFk2O4zy/e8E06JUStIH5OVWnblSeMvzOj0LjmVusGDJ9ITjOdQgckZ5hrJbfD2Q2FQqRXfvvgQtNMh/1SArsT4NRHGzyJzx057lOh2e76WXOJmle6gDUeTmnmshU3aWRd4ln9HYBPc5NaTX5tll0WzvI44dd+xZBCy3BNPfL19mCJw9CW2bt8ACy4YXpbJZFtveGN6D1sgDRZNmS//3NtUDhR973JwQx8qz9PvExspLVxanc6fDhcov5OYWzkV+f4iM9vV7uKVbwWb1o1U2bW8xz8SpNWU9iw/Z5Z4lc6eJjxvL/8v14LU99VyOO1A3l4sXmAKLSPYrjbvRZpLPaPnVBcVNpIjldKxOhxe85CIzkuxJInHssMuMyXXE8tzpzadIlP39GIreOqouyPt3ghX0bJ8J6OeFLv7Cd58h+3O2J68yxDs9TlA7Pr6OcyXpoMx7zpwTFdwfcc7vE7xC1GWC7N0b50vZvqbjRSmQSGlvFq8UblKe5kDAyzimPy3QEh82bmLJza1wGsK5HUKXjYrU14hzapCq3FXk6jCV9fslYOVTWaTu7g7zi2i7cwtlPV/mPJvzYrjrVaKwrMV3wKGuXFV362QhpKQUDArRIIg54jYr6WxqFqizbIplJbhW31PPRGvsTDjRytwsvXFN0dYKPd3jRUuayISdSY9nBhWWxQ0PZ7NUanYHGiFH3Y+y+L4E2lE3mecKGJ+zOXm+xiHISGInq4JAkC1+Ord6Pf4ds08rPCCLpFJsxKbu2rg+uQSMyoLmEO3dbeTIlIPmETl2DU0/Pv746UPiOrd2A1ANExe0qRzs1WmSDaXFR6nojo2bZRdXSENS3ju7B1XOtadjca2wSVZeOxuZjZMPa+8lPYELe24vVJ7GoWTUvp69Hy32Dd1pRi/YLD5XwI8TVy67X5AxbQO5L95iQ76Tc3uW8o7ZXggw5DUJU2p4B5v4WYrVj6u7WEcguXDam/Lcxhcr67kMm/viHTaDIuiE4wn63O5KzZZoOPXgdudIlkjBkiN395kqP/ccW+bt9bU3Pl5/PHGuP67vG5t0Rd51wc7K82J9bUXiXOX2GkAFgLmWtr17AB6xOJeTJ+tRSx9fH5+eHH86Zr+IpQX1Z7OEmus3k08py0YB7XONFaS2iGwhkuJ+S90j+Q9ZnEIZOev5//H0+vT05PT96cf11ElPwc1zNNXlxqlkPwYVKS63gl5aos2WDvVj9TIgmGBkSEghtDt8uL5s7pTAffxw+v54PZTpsSyMXd0VztQtWnFqRNYf+LrWxc3PVp1HQy3Hr31Sid1hntwP6uYdP9YhIfnp2rLpk8SnxPvj64+JdOJk7f2kJ8terzexlKtFmsyIO1qQ0vMBOtlqhwYSCozmYQCnZvlUirR3fOdMDCdeT17r2Sz7GVFMnBxfnyTY09N1nx2BH1uWxSlXtL5VtSShec+gUPJ9jWU1ZhCj+UjFFNE8pP/R/yFoW1sHGCqgHTl+jbYycOw68en4g5t4/36dvNhkKEJB86LyVKVoM3Um6aVSxM4aBdLlGvpityingYYbeknLk9ckkvtISWHieVNe9m7QNk4TzvGxd3zqJD5kEh/WQ9mBYg+nFrpOnezLsK+BcRtkd7pSVChEwzU0IowHutYn9UgF+fbeFdS41XFlIXuzpJMAzrGXON5IHH8+TXy6aQ0ZW+6kXG8MYqYlgK2CbNYbJb0RSd2bJt6NCTRf6rKNiJANLbo65S3PmcvczZJoNu9PCGDi83HCe3/TUHEjPTl0BZug0dEf5dQt5VN6Vw9Alb4kNVZFzVIMfzigwKS3AQ0SuRNaGA9v4rWRSADwA0E7TbxngbgKcnLMQ5y5lniGsMROSP4gi5aSkrqDfGopLNGyY7T+cEZ5lLJ2HUIydMFGsrVCy31MnALmGmhoch8+f1hr4Jm5zIeTOUWLeRkauB+kyHoQ+tmVaC5VKFo3iL8X9/Y684sShh18PVyumEweJ06c48RHL5FwrrF374n0Wn6IkDtT2+XPkGALakplqR9RBPdWbEbEMUC0gH6WjX0maPbYm2A7lmgQrYkk1N3Jp0TC+whEHcgbN2iCZ/dc8UxdoJFxYvHhGv0y8bSW12hEl6MeQbPmUyjJG7RTBBKi5BPQToD6HqFc0RfQxHA+ttbQmEYUp7P01biDVpQfEN9iFsWsTtC4nt2zV2hpCnCK6OHFR4dIPPJO7iaSVFSs0FQVc4VEwb5uqIVuBMmyuIsBlAJBm45dTITWxsq1xEYasjVD0DbIC2Tl0jlkCReGFset9o00GQzvbPYbsBgPcpKh45c0oBXQ8TxvlZPEtdPPCOIpsiNx/Rmyy9v4gJguFPNYtuYeO+ZXOUnnG6RjNLh1iBtSz0iwkUKkutH8O9AJMRvmyMpES55+BtqHf0PDvt+gd7CobkjBWJksDvYamDg0ku6SHsN9CRqQQitgCIbzlLmssT0Fc9HMyiDtj1Ppk+vj68/Ix9N/fzi9/pRBVi4qPGnLIYtQLLlEVRuYhQt6RKSOxqgl0kfXQzojZwhU5qEKCCtbjuN4cjzdkKCdbrCZjY1kUv/0ycukNzYy9N2YvpJo3h2bTsSUlUslTUefafSjoQ/S6g4IdS4mXmo+W8C8yFI6QQc+IJGUZZEnsiQJ1xLvlx0mmVzNIImFc5mQ77lzhyOKki7WVYcoMyRlCqCaTsfQVDaP8WBRdZJG+xvRyxok15k4cSZIynF6If7XhoGlpRHKuPFY/NwuuyvRFQUIk16YVdBOS9gkmhiExyQ2lpCD/ICZLcq/QZQCx2PktKhSIBsUhyyTy6RzyUwunSMCNncdDyBQCqIwccakd++QxVhJ62bh3CAflBi/Qju3H/e2rDQkIkL3mWCBphEVxNtuR+BEqKCNj/GckUyz445l2e5kallTN50mdUFGggwhrl4PVHKwRebTgi75GvobZNcAVBULZk1fRCSF2yhEs4VvpA1sklOZsYssw8yRg2vHZPfmIfgCc49I/ivYEydDPtGTmDsE2xvPxaXCwxqgQknt59FQpUE8HvdXjRnNFUm5aOQozB1SAr1OZ8rJLk0GbE/OAjWtGS/36IbC6xCB8CY21OtOMd6jrE966DBqRKRvlyhxsEueRkl38424kRPOhizkyAoQU710GiPUSTqpf/3YFO3oU+LUyyQ9TJSyZSMlF8rcl0Aikt6VgkAKVJqBzEonENMDxDq/CCQVlGLH9qahCKbM5E50wk5fP6QVnNwJ6i4z5jl30iGnGHuxnIQb2VmQQhpKQaE0XJ569W/gUqmIQU+CdiEfPCEb53julC/ryL50EvJb/BoN5UGKMNPheZI7pJcujp+QgKkoRc4duzPp5gyxn18Fk5UafjYbNRi1QMZu1PeUzLer44uvsRBKKqSTDif2enKHbNvyccRCgJBF4d9gxSEDfeVett+okAZRgqxGJr/je+x4YvNWTIXuN4HkMCQTxu7JljvJubJycDNQNfSVE1+c0RR8XcpTk9jBMN5jaVAkNcDJHdSATIdTMhJ+Yzz5KGmJlm1PaSAXR10FZsFL2KBvDoQKGrGSHx9LIgqpvLZZJIM39o0TO3Rzwm+2DWg2KW1SgHzYISQZB3LQjXVJCtQ4LDG3m6rTsxuNTgNb28w7xRKJQ8S5pPNtIBFKJGwyvg1R5OJAllRV70IB4A6Hw/7g7iNfn84+VMXmG+RQbbFmJ4ksl7Egz1P1wS1eiFzZSc8XEUa32UZGajNKjGS+iYJ7n0YUdJKrtAil7s4unCNFBefmmUxHtqywY/fG45DjOpNezyZaWh7nyOMW8uxbuWI2i4wa+Exe8ruDKDXMVu6K4tK5/mJ/JR8FDrkguMhF0XJY8Ao6WyadybCOk8zgBWrQcR0wqTBxeTIFI/homiXcrS4N2UAb3nGgsDId7aiUj+mrTpwT55BTJBuSXx6RLCxD62KOaBLX9si40ZiBJwgt//mPPgZ5Mm0RadlldsmJOUfyRORoU/3WkixHzrF56truDtkFvREgo4fZqH+fY4sbCcBpJJTkjBnOPQOczNkWmuUtcMlkiEZAGU05YJ4UmcIQxBdk++hp39bZwrRBdxZFsWDRIJuZQKKHb3ubDAbiqeukerwouLlvwNIgyHCjg2Ci1va3qYDU4VcgDbWhfsfTAK0ipYihFBvIf/DWLE+pbXufeV6dez0IPV7k518eQbFpB8019OxMj8Sx+FilZAy0FDneUgddmH9LOOmYQ2kGydGXIq1UoYEtYt+fKeFGONHHmOLtzJoSSuYm6K4dB43NsxHH+lbMQiyime37/UiSpEpl8C3YeuORAi3IDruLA+HdTYY5C+353BqH8M6as2ly6ppMptPgNKIWHNeyBOU5eQhD2xrcAg5hXR1bc0cw/VXjyQ4D3GB+EYHtbeZAkR2U9sTtQF1a9gR157hj8iiO60H6OOMxNm2PPuho0NPi/KBETVue1n9rpUDPZunmocnrKWlxV+rmFsqAPH0bTyf0KJbnLHhD/hbHnsV2xhO0tWL85L1ETouj5ROFQqPv34EGre4HJDH7A00bSNklDRSf7JKHEKGDwTptI54xQwro1VPLCe2JDDCmTjqNStBSQ01tDAZdvx9ElbvOQheIhQUG4BZntAXykPLqTJmMBWfq9bzpuGfboWV7rivwU9YjfYbZ2VYbTDcakBba9Vk9KxG7dXS71QZ5cpQD6/Z3AXfwTpnajpAD3ryXGc/t6Vx2QpHvdZAgAGsEDejjwAealCVtTVpK8O+Go621URn+72NsylM+tMaTcejalifbc86TCYEq73D79Xo/zw4HA+wZSkjKS3o065Ye9ui7pGeJMFMlTAr/xrYcoPA4WWBDyxGsTM8TrI5yBsf2Hv9HzwepbKRFUn8YdEvaQ58JU8OQTg7ryUinS/8tUjxF6XDWGBs2thTlHbCY/f/L6dlhAROE5A+l+x7v/YmpfSjBbjwsZP+zTwrq+bOzM4VXlOrZs6cHDKn+/+gpIne7OiuV+t/9bPYGQxv4sG6DdHHUYH9xIFV/sk0l/sHB1dXVAb1yt/5/G7gXvdQIdGjUmdp42Gb5/dlQBwRMjzBIaoG0GEykwW79yeqHOvFPder/TenkQLPPopcF0f2y4BYrDG+kM9I48rXu8hnJkPwIaXNzs76zvb1dx4ud3a6+uNgH3/uzWRAEswf9LAJ7daPUkc+R35jF78TjQXF3a3tnZ3t/d49MLqtLUV9ZUtJ6MHhgMPWb01aKNxhE9EzW//rC/Np18DIK+t2H/96jMVx3D3j9gr8I5bqtDWPDfrfx479k6d4MIjRB9EFflzCQrd15CTmIwSE+gkwR/gj65Dnoj1jBz+ezsXiQ8pWoj4Lwg4okLWXUYFip6H5J6/ajCjCJ5SuVhxDjVzboB0OSYt2VkMeIKelEZwzYijRbuaGR9oLLfhzqrjsAXuQHUr7/Q7/++QE8clp8q7T5W9CyLIblv7BD32+FmSQFjcaMzWeDe+ayn2MldpGVGnpLJfIf2DAfZITTVsffaqnP5vN36sW/blpf/6J9qQMUW+XhxP+9Vvg6F9WGf9fT82/s/wFy0VaH0Ui7QgAAAABJRU5ErkJggg=='
              ),
              const Text(
                'Universidade',
                style: TextStyle(fontSize: 18),
              ),
              const Text(
                'Federal do',
                style: TextStyle(fontSize: 18),
              ),
              const Text(
                'Rio Grande do Norte',
                style: TextStyle(fontSize: 18),
              ),   
            ]
          )          
        ),
      bottomNavigationBar: Row(
        children: [
          const Spacer(),
          IconButton( 
            onPressed: () {},
            icon: const Icon(Icons.monetization_on),
            color: Colors.green,
          ),
          const Spacer(),
          ElevatedButton(
            child: const Text('Ganhe R\$50.00'),
            onPressed: () {}
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.money)
          ),
          const Spacer()
        ]
      )
    ),
  );
  runApp(app);
}