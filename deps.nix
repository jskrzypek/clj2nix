# generated by clj2nix-1.0.6
{ pkgs ? import <nixpkgs> {} }:

  let repos = [
        "https://repo1.maven.org/maven2/"
        "https://repo.clojars.org/"
        "http://oss.sonatype.org/content/repositories/releases/"
        "http://oss.sonatype.org/content/repositories/public/"
        "http://repo.typesafe.com/typesafe/releases/"
      ];

  in rec {
      makePaths = {extraClasspaths ? []}:
        (builtins.map
          (dep:
            if builtins.isString dep.path then
              dep.path
            else if builtins.hasAttr "jar" dep.path then
              dep.path.jar
            else
              dep.path)
          packages)
        ++ extraClasspaths;
      makeClasspaths = {extraClasspaths ? []}: builtins.concatStringsSep ":" (makePaths {inherit extraClasspaths;});

      packages = [
  {
    name = "javax.inject/javax.inject";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "javax.inject";
      groupId = "javax.inject";
      sha512 = "e126b7ccf3e42fd1984a0beef1004a7269a337c202e59e04e8e2af714280d2f2d8d2ba5e6f59481b8dcd34aaf35c966a688d0b48ec7e96f102c274dc0d3b381e";
      version = "1";
    };
  }

  {
    name = "org.clojure/data.json";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "data.json";
      groupId = "org.clojure";
      sha512 = "3a046fe64fbd10dc100f79b1d24de0d157b95a7d84661ff469b7af999eb9ceb6b3092481583c32a28fb3e43b3dc5c811787b0b0ca7cb742a093a1714fe032272";
      version = "1.0.0";
    };
  }

  {
    name = "org.clojure/clojure";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "clojure";
      groupId = "org.clojure";
      sha512 = "f28178179483531862afae13e246386f8fda081afa523d3c4ea3a083ab607d23575d38ecb9ec0ee7f4d65cbe39a119f680e6de4669bc9cf593aa92be0c61562b";
      version = "1.10.1";
    };
  }

  {
    name = "commons-codec/commons-codec";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "commons-codec";
      groupId = "commons-codec";
      sha512 = "e78265b77a4b69d8d66c45f98b70fb32d84b214a4323b86e9191ffc279bb271243b43b7d38edbc2ba8a1f319b6d642ab76a6c40c9681cea8b6ebd5b79c3a8b93";
      version = "1.13";
    };
  }

  {
    name = "com.cognitect.aws/api";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "api";
      groupId = "com.cognitect.aws";
      sha512 = "e55709f5573cd8bf5e6df10caccddfe064bef4799656859fd6b69a3a2a312bc2a3570da14867017d3f573337e80c86e25ae0051a58a93734c45ac94ee717082d";
      version = "0.8.408";
    };
  }

  {
    name = "org.clojure/tools.analyzer";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.analyzer";
      groupId = "org.clojure";
      sha512 = "9cce94540a6fd0ae0bad915efe9a30c8fb282fbd1e225c4a5a583273e84789b3b5fc605b06f11e19d7dcc212d08bc6138477accfcde5d48839bec97daa874ce6";
      version = "0.6.9";
    };
  }

  {
    name = "org.codehaus.plexus/plexus-component-annotations";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-component-annotations";
      groupId = "org.codehaus.plexus";
      sha512 = "cc534fda54272f074fe9edd581a6c3e1ea98127340c7f852c4b4953a44dad048ace22dfa10f30d6adcdfc15efd319dac778a03ebbe20de7779fd1df640506e88";
      version = "2.1.0";
    };
  }

  {
    name = "com.cognitect.aws/endpoints";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "endpoints";
      groupId = "com.cognitect.aws";
      sha512 = "acef28d34d4b6d171b17f5b191262f6f29dee6c2221b147d59079311c6440fdfb552ea636f52c04716dd14d2fe0be62b524b419d160f7982f1d8616f4a0ed63e";
      version = "1.1.11.705";
    };
  }

  {
    name = "com.google.errorprone/error_prone_annotations";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "error_prone_annotations";
      groupId = "com.google.errorprone";
      sha512 = "8f5f13fac4c40d680a1f062c609aa598e7585684af37d695357738935fc0683ddcb94c880dddd03e78b1db071c2e5cebd054a061f8f24322c5ffa43aca34a859";
      version = "2.2.0";
    };
  }

  {
    name = "org.apache.commons/commons-lang3";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "commons-lang3";
      groupId = "org.apache.commons";
      sha512 = "fb0fe98385496a565678a000c26a3245082abfbf879cc29a35112b4bf18c966697a7a63bb1fd2fae4a42512cd3de5a2e6dc9d1df4a4058332a6ddeae06cdf667";
      version = "3.8.1";
    };
  }

  {
    name = "org.clojure/tools.logging";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.logging";
      groupId = "org.clojure";
      sha512 = "4601bfd9c63399cb1f58a67fafad900b0f6dc171b723c32f784b8344ea1d28cda13d64a6daf508afd443f6d924a25cbc1b3ae7b3b908dd09bacf0581baec178f";
      version = "0.5.0";
    };
  }

  {
    name = "org.clojure/core.specs.alpha";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "core.specs.alpha";
      groupId = "org.clojure";
      sha512 = "348c0ea0911bc0dcb08655e61b97ba040649b4b46c32a62aa84d0c29c245a8af5c16d44a4fa5455d6ab076f4bb5bbbe1ad3064a7befe583f13aeb9e32a169bf4";
      version = "0.2.44";
    };
  }

  {
    name = "org.clojure/spec.alpha";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "spec.alpha";
      groupId = "org.clojure";
      sha512 = "18c97fb2b74c0bc2ff4f6dc722a3edec539f882ee85d0addf22bbf7e6fe02605d63f40c2b8a2905868ccd6f96cfc36a65f5fb70ddac31c6ec93da228a456edbd";
      version = "0.2.176";
    };
  }

  {
    name = "org.clojure/tools.cli";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.cli";
      groupId = "org.clojure";
      sha512 = "7071cef2a92ad2d245c4fa5ec625f489738df2c320e8e50ceffb23d9927f006805b632e3086e9fd514ca7ff59ad0a7a2d98f3b0e5773258a71978053d0b85d6f";
      version = "1.0.194";
    };
  }

  {
    name = "com.google.inject/guice";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "guice";
      groupId = "com.google.inject";
      sha512 = "1e811c276d3d953d7e2e6cc2bd33af16645f87e864713db0d70fc2dc7110483c8f40525f2f0f403344e5653bb8375ccdec9fda0c0ba6c42114ac482cba50960d";
      version = "4.2.3";
    };
  }

  {
    name = "org.codehaus.mojo/animal-sniffer-annotations";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "animal-sniffer-annotations";
      groupId = "org.codehaus.mojo";
      sha512 = "94d0335cdf94aa547ad6c0c7e44b8e3bda736ce19d941dd0faa3a45390e5ab2d122022ff4e07bb9aaedd41ffbd9500f324e0a9e42f4c5441bce0774f44872f45";
      version = "1.17";
    };
  }

  {
    name = "org.eclipse.jetty/jetty-http";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jetty-http";
      groupId = "org.eclipse.jetty";
      sha512 = "d60a0e46e1110fbb52a31e5d41842bf252633ae9e132c224dbb633095043f4cbd9e3d06805e4bc1c82dc3842e3c1a1a62bb195f3e4ea811f36beb152fb3c37fa";
      version = "9.4.15.v20190215";
    };
  }

  {
    name = "org.eclipse.jetty/jetty-util";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jetty-util";
      groupId = "org.eclipse.jetty";
      sha512 = "ebd3f861991b755fc09a37e1f196cec064f2edd941b0aaf7e14947e9ca0f2e6a4c3bb41c6afbe39af6d76c6ae0de03663e543abf37e36444872d354047a5407c";
      version = "9.4.15.v20190215";
    };
  }

  {
    name = "org.slf4j/jcl-over-slf4j";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jcl-over-slf4j";
      groupId = "org.slf4j";
      sha512 = "0a703864b269de6f7bc98df0fa98aa943cc327a4ca2915899d460e4a071fcc3fbe70957eb91b740cc935d0960b3d98f30c54a0a4019d7ae8c6d50f51edb8d149";
      version = "1.7.25";
    };
  }

  {
    name = "org.clojure/tools.analyzer.jvm";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.analyzer.jvm";
      groupId = "org.clojure";
      sha512 = "ec1cb7638e38dfdca49c88e0b71ecf9c6ea858dccd46a2044bb37d01912ab4709b838cd2f0d1c2f201927ba4eea8f68d4d82e9fdd6da2f9943f7239bf86549f2";
      version = "0.7.2";
    };
  }

  {
    name = "com.jcraft/jsch.agentproxy.jsch";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jsch.agentproxy.jsch";
      groupId = "com.jcraft";
      sha512 = "07e028fc7e47da2012116933d796ac75908e84eb5a42d8147aa11aa66c0c91ddd509628b19ad6603c7ce118a05e8985329fa0dc0dad7661d09ec5b3c76333ee0";
      version = "0.0.9";
    };
  }

  {
    name = "com.jcraft/jsch.agentproxy.sshagent";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jsch.agentproxy.sshagent";
      groupId = "com.jcraft";
      sha512 = "0898f33a1eae03ab3b0d78ad26076756ec0eec456e185b7d5057e003b33e0cb1b2ca57b8c4cdca48eae544daf36adcabd170138e5950b85ab8b64c97c094ba9d";
      version = "0.0.9";
    };
  }

  {
    name = "org.apache.maven.resolver/maven-resolver-transport-http";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-transport-http";
      groupId = "org.apache.maven.resolver";
      sha512 = "b5fb4eae069028c1ae7f00309986f487272a9bad1e637a5eb58dcd269421bb1194f0f18cb9c8cedc84b81d936e4b73327699584ed35d64bdc0e912e8f64661c7";
      version = "1.4.1";
    };
  }

  {
    name = "org.apache.maven/maven-model-builder";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-model-builder";
      groupId = "org.apache.maven";
      sha512 = "d65f71a4c755be518061fc2d33582c3da422cb3d52a01cd68bdf906c0fc4bfc1977da7714f9622452a02d34e00b7d4b1b1e4986bb59cbfdc5333bf12c9c7e699";
      version = "3.6.3";
    };
  }

  {
    name = "com.googlecode.javaewah/JavaEWAH";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "JavaEWAH";
      groupId = "com.googlecode.javaewah";
      sha512 = "fea689d1e29761ce90c860ee3650c4167ae9e5ecaa316247bdafac5833bce48d2b3e04e633b426e3ab7ef3a5c9c7fd150ffa0c21afdcae9c945cb2bb85f8a82f";
      version = "1.1.6";
    };
  }

  {
    name = "org.codehaus.plexus/plexus-utils";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-utils";
      groupId = "org.codehaus.plexus";
      sha512 = "354f185cb3c6ade3f2d3f27c1a27a811922782ca4bd74a997c9c922dc7a2d44148ce6f141f16c0c1ab8f7988dd8a30602713d558606d088e8ba82a0ec1fb55a5";
      version = "3.2.1";
    };
  }

  {
    name = "org.apache.maven.resolver/maven-resolver-transport-file";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-transport-file";
      groupId = "org.apache.maven.resolver";
      sha512 = "0ef5358144e87441c02b94a29d194e4951af2772cacd6ac8d41f502e621dc78e622c7c5bd366a98e12c2b4a70517d25f83f55427f93e61dfd41671f11f0b565c";
      version = "1.4.1";
    };
  }

  {
    name = "org.eclipse.sisu/org.eclipse.sisu.plexus";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "org.eclipse.sisu.plexus";
      groupId = "org.eclipse.sisu";
      sha512 = "f76b33d4c0acfb90357736b8466016661924351332e1db6eaff5bd15398e7765acec328dd3e94d37b66c9881a54bbed23571590363c46ee78f5d1acbad36c95b";
      version = "0.3.4";
    };
  }

  {
    name = "com.jcraft/jsch.agentproxy.usocket-jna";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jsch.agentproxy.usocket-jna";
      groupId = "com.jcraft";
      sha512 = "3213e63895552aa33858ece929c84c140ea95d6c3835c88e150cd37f266fb69b48b9ff9921132c808d1909ad0e97dd497a28a34d051a0a8c06c18b5a0d5f2850";
      version = "0.0.9";
    };
  }

  {
    name = "commons-io/commons-io";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "commons-io";
      groupId = "commons-io";
      sha512 = "1f6bfc215da9ae661dbabba80a0f29101a2d5e49c7d0c6ed760d1cafea005b7f0ff177b3b741e75b8e59804b0280fa453a76940b97e52b800ec03042f1692b07";
      version = "2.5";
    };
  }

  {
    name = "org.apache.maven/maven-settings-builder";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-settings-builder";
      groupId = "org.apache.maven";
      sha512 = "f9f9f538a409d7cf2bd2517854f2d6aa45e0476865f217a11832f042ec361c67998241065540c3269d3db3915c903b15b6e4fb57af9623b192f9d8089110ecbc";
      version = "3.6.3";
    };
  }

  {
    name = "com.google.guava/listenablefuture";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "listenablefuture";
      groupId = "com.google.guava";
      sha512 = "c5987a979174cbacae2e78b319f080420cc71bcdbcf7893745731eeb93c23ed13bff8d4599441f373f3a246023d33df03e882de3015ee932a74a774afdd0782f";
      version = "9999.0-empty-to-avoid-conflict-with-guava";
    };
  }

  {
    name = "org.eclipse.jgit/org.eclipse.jgit";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "org.eclipse.jgit";
      groupId = "org.eclipse.jgit";
      sha512 = "19ca3301391a4d4a6ca9c8ad2c936040497ee79b7c1e59c768636cf5d89f27329f808f8daaa74771bdedb877d694d9ae44dc8f94a932f4054d0c471efccf69d9";
      version = "4.10.0.201712302008-r";
    };
  }

  {
    name = "javax.enterprise/cdi-api";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "cdi-api";
      groupId = "javax.enterprise";
      sha512 = "3e326196a2cbf19375803ce37d743a9818c4fa2292914439e748060d6889c997fe33077f52e52d4dd61b60e7342aa31b446d7571a92ec864f44cead45ebd612b";
      version = "1.0";
    };
  }

  {
    name = "org.apache.maven/maven-settings";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-settings";
      groupId = "org.apache.maven";
      sha512 = "dae78e5bedde2009c8a7fdf0b77c91b87b8c4c4cb5bc73f799107edd75597a3c90dc497abdfa43254e7dc31eb7707384254d91fb656c74bb5d86cd868e36209b";
      version = "3.6.3";
    };
  }

  {
    name = "org.apache.httpcomponents/httpcore";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "httpcore";
      groupId = "org.apache.httpcomponents";
      sha512 = "7f58003e9eec977627401c4c6bc720af257094f492b0f73c43fb547e0d161017657f5c9c0b834704c5c00112b91e88ee9e4c255cc1e31aa62ba979d21393aed4";
      version = "4.4.10";
    };
  }

  {
    name = "org.apache.maven/maven-core";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-core";
      groupId = "org.apache.maven";
      sha512 = "fe0e2bd7c34267f7c8139d996bee99f41d29bcb6d1bbedbceb055eda31355ef179ed5e319fa97496eb85499bfc5f8738f7ac7f2c17a7118cb87cfacd984708de";
      version = "3.6.3";
    };
  }

  {
    name = "org.sonatype.plexus/plexus-cipher";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-cipher";
      groupId = "org.sonatype.plexus";
      sha512 = "deb948be3a9f6a2fa74adca17e54b1074948267b3a35dd4000d92c559d0387650770ccee096ad8f01dd51c36caf63878dc0bcf57dfb1f2e3e1a9d51204096617";
      version = "1.4";
    };
  }

  {
    name = "com.jcraft/jzlib";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jzlib";
      groupId = "com.jcraft";
      sha512 = "339793df0001214aaadac2a5456c3cd54a0c09ba2c9e73cf13155adbfdf1c2a953f7336903e45e76a52ce6b48c5b7c78436667d7836e7354e02e85ba0908afd3";
      version = "1.1.3";
    };
  }

  {
    name = "com.jcraft/jsch.agentproxy.pageant";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jsch.agentproxy.pageant";
      groupId = "com.jcraft";
      sha512 = "d141c49675f7f16ea4eacbf8c426764aa28bfacc598f07b72fd10228565000954e6fad5334ffa5e20b7f4400f2dd5641aa39e99b8e8dceaf12c9dfa39930074c";
      version = "0.0.9";
    };
  }

  {
    name = "org.apache.maven.resolver/maven-resolver-api";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-api";
      groupId = "org.apache.maven.resolver";
      sha512 = "da56ddeecfbb6d285d08fa60f88fe125d1f08f48ea24013b83b6aadf24835c034c9b45cdb815d99505b35e0605c48b6d7e5949f1735a874049b0790e8a8461dc";
      version = "1.4.1";
    };
  }

  {
    name = "javax.annotation/jsr250-api";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jsr250-api";
      groupId = "javax.annotation";
      sha512 = "8b5dd24460e42763f3645205be4b4f80691e217d36bee5fc5b5df6ebc8782ed0f641fb9e2fe918a2d0eede32556656f6b61fe65d2cbec5086e61ef3d91e4d871";
      version = "1.0";
    };
  }

  {
    name = "com.cognitect/http-client";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "http-client";
      groupId = "com.cognitect";
      sha512 = "1356c32e45ca622bad1b46b3821237c06c701cc0a04b113d7dc92655158844cd9a2f043d835c0d77648222a092c87aae3f993c728829128e74ca11cce8120baf";
      version = "0.1.101";
    };
  }

  {
    name = "org.apache.maven/maven-resolver-provider";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-provider";
      groupId = "org.apache.maven";
      sha512 = "9febca461a031acd195b96b05fea2f28333a2cb587119a5493a3e9061af87bed4e7e1619acce9a505ad579a71f0a5e740cf78a3642095c2bc45a3d73c358e226";
      version = "3.6.3";
    };
  }

  {
    name = "org.apache.maven.shared/maven-shared-utils";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-shared-utils";
      groupId = "org.apache.maven.shared";
      sha512 = "4cab9de8654b3744ceb1a62b51853e076c191cae8193e8393a979cd428833b994ceed591806960e100942dde3eeb65538169d42666004e3623b6129475fe2cab";
      version = "3.2.1";
    };
  }

  {
    name = "org.clojure/tools.deps.alpha";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.deps.alpha";
      groupId = "org.clojure";
      sha512 = "6b7057c37cfa094a353e1717b8df053d4156ccc99a60b21931867cdda8fce280bfe2229a7ccfe0841ae9218309d08c987588070787175c37a9ad9d0a3b6c6eb9";
      version = "0.9.763";
    };
  }

  {
    name = "com.google.guava/failureaccess";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "failureaccess";
      groupId = "com.google.guava";
      sha512 = "f8d59b808d6ba617252305b66d5590937da9b2b843d492d06b8d0b1b1f397e39f360d5817707797b979a5bf20bf21987b35333e7a15c44ed7401fea2d2119cae";
      version = "1.0.1";
    };
  }

  {
    name = "com.google.guava/guava";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "guava";
      groupId = "com.google.guava";
      sha512 = "5c32a58148c3b91577cd6d335d61a1994041a2a5c77a240303ba6e786c895336400f6fd449eab0802594bf47c17985c5587ab87c3c4b628bfc1d7090ddc0b006";
      version = "27.1-jre";
    };
  }

  {
    name = "org.clojure/data.xml";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "data.xml";
      groupId = "org.clojure";
      sha512 = "12ea6e7ee27be4a0329a766f3449f3e3b756772e3cd8588b4666bb175faaabd0780b96300b10e17ccb3016b0ba5d9f020c7d976211ff398e7bebef718aa4d5f5";
      version = "0.2.0-alpha6";
    };
  }

  {
    name = "org.apache.maven.resolver/maven-resolver-spi";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-spi";
      groupId = "org.apache.maven.resolver";
      sha512 = "250bccfb03d380b0fa64996e7911fa1c58253f28d933746487b8c0b04474bb2d72afb0360656f651a487fac065ce78c966b059d8aab358e8ba3593aca1eeae0e";
      version = "1.4.1";
    };
  }

  {
    name = "com.google.j2objc/j2objc-annotations";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "j2objc-annotations";
      groupId = "com.google.j2objc";
      sha512 = "a4a0b58ffc2d9f9b516f571bcd0ac14e4d3eec15aacd6320a4a1a12045acce8c6081e8ce922c4e882221cedb2cc266399ab468487ae9a08124d65edc07ae30f0";
      version = "1.1";
    };
  }

  {
    name = "org.codehaus.plexus/plexus-classworlds";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-classworlds";
      groupId = "org.codehaus.plexus";
      sha512 = "6a58048d9db54e603b9cfd35373cf695b66dd860bec878c663b4fc53b6b3d44dd5b0c92e7603654911b1f78e63ef277cf6b272fe069a360989138550545f274d";
      version = "2.6.0";
    };
  }

  {
    name = "org.sonatype.plexus/plexus-sec-dispatcher";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-sec-dispatcher";
      groupId = "org.sonatype.plexus";
      sha512 = "5b947edcb05a1c17648ec9fe53dd2c66b4a86dd2b950d989255f6edd636fd5d50d18b8f31b3a1736dadd9cff6790a3d0355f2ed896c3eb7f72e009199fe9957d";
      version = "1.4";
    };
  }

  {
    name = "org.codehaus.plexus/plexus-interpolation";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-interpolation";
      groupId = "org.codehaus.plexus";
      sha512 = "fb647c1f159d17e16ae925bb407585e4a4b30c468518e60d3069ea4a75fa0f7122e789923534632125b22b7cef1cb44caf00700bba90282360f7c76e086b6699";
      version = "1.25";
    };
  }

  {
    name = "org.apache.httpcomponents/httpclient";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "httpclient";
      groupId = "org.apache.httpcomponents";
      sha512 = "32cb1ee6e34c883ff7f4ade7eaf563152962b0e40e6795f93d1600ffe1ced7102062c8d0c2c31f4fc9606f1f500ea554e5d83b7ae650c1d78a3be312808e6f35";
      version = "4.5.6";
    };
  }

  {
    name = "org.checkerframework/checker-qual";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "checker-qual";
      groupId = "org.checkerframework";
      sha512 = "fb32e3893f9ebc956ef99066b219a8fc8049b47b80a7253cd89b7faadf0a2fa14d60b52dd5c2f4aaeb1db0359f49fec9e29d3616bd314ec8c82db1c657be8cd2";
      version = "2.5.2";
    };
  }

  {
    name = "net.java.dev.jna/jna";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jna";
      groupId = "net.java.dev.jna";
      sha512 = "ea1b400cf25c6032160553f19baedb21103341f1c4236fbecf5f8462cc4db06f3459d7812ed0ad07a0b9faa3b576f8fa6edbd9ed64f9486b85e5bf982c21775e";
      version = "4.1.0";
    };
  }

  {
    name = "com.jcraft/jsch.agentproxy.connector-factory";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jsch.agentproxy.connector-factory";
      groupId = "com.jcraft";
      sha512 = "b4268c6d91899ffb82d5854eaef7c2bf7db3e1e223446d6ca10ae5d88174f944994e2d098582b6dd9ac0e45feacb9e52dd58ea9e41f4ff9b2241cbc5226fa567";
      version = "0.0.9";
    };
  }

  {
    name = "org.eclipse.jetty/jetty-client";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jetty-client";
      groupId = "org.eclipse.jetty";
      sha512 = "9a1e4463542973c6944becddc8a38ba2735a8b344605b0befdbae628c6a842d2128f7c56e1b88f2e45352ffbc0c8ab78242a1057baae7590c22117cb5a43d7df";
      version = "9.4.15.v20190215";
    };
  }

  {
    name = "org.eclipse.jetty/jetty-io";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jetty-io";
      groupId = "org.eclipse.jetty";
      sha512 = "9d03f6250f61f79bdcb116f03c610a168c53879b68c2ba68a5f902f2efb5a6b957c97fd3d8c4c05a65441f1ed56db12f7d83a9bb1cda831d70a3cda43b96a68d";
      version = "9.4.15.v20190215";
    };
  }

  {
    name = "org.clojure/tools.reader";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.reader";
      groupId = "org.clojure";
      sha512 = "454bbc84b9fc755b8edeeeea9914e5b70cac507545bbabc09c91b4ae7a1346d06849dd7139aaa9de7faee550fbbcb086bd0b100329f84dc8bf1c9a5be29524a5";
      version = "1.0.0-beta4";
    };
  }

  {
    name = "net.java.dev.jna/jna-platform";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jna-platform";
      groupId = "net.java.dev.jna";
      sha512 = "8ab09d04fd7e86b505f917e0a2b11d2c2e9f3a3e923a9fb94ad7e0bf6715f1923e02d8f3927f9580ab9f39f9fa213176013c3bcd977c2d1ef6461e2610571455";
      version = "4.1.0";
    };
  }

  {
    name = "org.clojure/tools.gitlibs";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.gitlibs";
      groupId = "org.clojure";
      sha512 = "91a64c1bd5b4be80b551c7a8c49c1c7c58a93bdbfa3f07e57cf041c11f8f54c2173730141a4704ec5d219a82781a76ee7406dcf220479d16ba7e3f98526d16b5";
      version = "1.0.96";
    };
  }

  {
    name = "org.apache.maven.resolver/maven-resolver-connector-basic";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-connector-basic";
      groupId = "org.apache.maven.resolver";
      sha512 = "ff8e2d8a1abd7f1273997f0cff8156cd409df9d3144515efafc1a4157b49b7055b27237e2055c3814a790b3e53eb82402d3ce4e09fa6644b45da185f2b90a8ff";
      version = "1.4.1";
    };
  }

  {
    name = "com.cognitect.aws/s3";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "s3";
      groupId = "com.cognitect.aws";
      sha512 = "209c1b5da97163da0980abdf2c3523e5037e13d1d7e3467a565271d4c61e51c9958d5e1beb7a8c6163a6ffc0e312e4724f9ace8a3ac545ce385dd056d6d5b5da";
      version = "784.2.593.0";
    };
  }

  {
    name = "org.apache.maven.resolver/maven-resolver-impl";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-impl";
      groupId = "org.apache.maven.resolver";
      sha512 = "d3132d89be995b13c81ddcca34f4cb22128a774ab133d685369b685e945cdb5c6a4a539cc67043bcf1d11a15f7fc417c464f7c1b34774c2abe7e430cc30c4347";
      version = "1.4.1";
    };
  }

  {
    name = "org.slf4j/slf4j-api";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "slf4j-api";
      groupId = "org.slf4j";
      sha512 = "ca99cb8f73875eac2fbdb8b13b9801d1299dd3e93556bd002ec2f2c906fd88e4450b9cf4ab025951944fc490d03ff691189fb174440bd3f404e9717276b6f9e6";
      version = "1.7.29";
    };
  }

  {
    name = "org.apache.maven/maven-model";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-model";
      groupId = "org.apache.maven";
      sha512 = "7df3d781dd0c3a5947c76a02bb811d2bff0eb9bd0ba1efc3a55001576c58612bb1fd221ceb9cedd7ed84dfdb64c973b61af22c56636e1cfb03a55cfbe83655f6";
      version = "3.6.3";
    };
  }

  {
    name = "org.eclipse.sisu/org.eclipse.sisu.inject";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "org.eclipse.sisu.inject";
      groupId = "org.eclipse.sisu";
      sha512 = "cfd6be3e9f160258682662325757a8b95303045e37708f4226f40aaef01c8a5e4ff5a275715e4d740e2feae462e3b76f53c360507c1f738bec0157d2c226a46a";
      version = "0.3.4";
    };
  }

  {
    name = "org.apache.maven.resolver/maven-resolver-util";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-util";
      groupId = "org.apache.maven.resolver";
      sha512 = "35a0b284fefad99b77c60f15d091c1bad3417baad1fc86fb6850a347a8a75a9cea26fa227ec601577f4096184b82ce198b4472441e95fce556f7d332c6a155cb";
      version = "1.4.1";
    };
  }

  {
    name = "org.clojure/core.memoize";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "core.memoize";
      groupId = "org.clojure";
      sha512 = "e1c5104ac20a22e670ccb80c085ce225c168802829668e91c316cbea4f8982431a9e2ac7bfa5e8477ef515088e9443763f44496633c8ee1e416f7eb8ddfefb88";
      version = "0.5.9";
    };
  }

  {
    name = "org.apache.maven/maven-repository-metadata";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-repository-metadata";
      groupId = "org.apache.maven";
      sha512 = "9fbaffa07e4bfc091d4d8818330481bdc9d1d96448087321bb2914aac10ccb1c7b5cc6be0f6c76b8c0232b9cb69e4cdeec4fe40df5e9f2d472a4a027e5a3b3f9";
      version = "3.6.3";
    };
  }

  {
    name = "org.clojure/data.priority-map";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "data.priority-map";
      groupId = "org.clojure";
      sha512 = "450e18bddb3962aee3a110398dc3e9c25280202eb15df2f25de6c26e99982e8de5cf535fe609948d190e312a00fad3ffc0b3a78b514ef66369577a4185df0a77";
      version = "0.0.7";
    };
  }

  {
    name = "aopalliance/aopalliance";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "aopalliance";
      groupId = "aopalliance";
      sha512 = "3f44a932d8c00cfeee2eb057bcd7c301a2d029063e0a916e1e20b3aec4877d19d67a2fd8aaf58fa2d5a00133d1602128a7f50912ffb6cabc7b0fdc7fbda3f8a1";
      version = "1.0";
    };
  }

  {
    name = "org.apache.maven/maven-builder-support";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-builder-support";
      groupId = "org.apache.maven";
      sha512 = "1f72981bf568facf16865dbfb1d5955ecbf82d90b5ed3da2bc096fb7e0f67056202d16078d9ad46945de9b59846aadc8ac010d23ab374dffbef5e7534bdbf1fd";
      version = "3.6.3";
    };
  }

  {
    name = "com.google.code.findbugs/jsr305";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jsr305";
      groupId = "com.google.code.findbugs";
      sha512 = "bb09db62919a50fa5b55906013be6ca4fc7acb2e87455fac5eaf9ede2e41ce8bbafc0e5a385a561264ea4cd71bbbd3ef5a45e02d63277a201d06a0ae1636f804";
      version = "3.0.2";
    };
  }

  {
    name = "com.jcraft/jsch";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jsch";
      groupId = "com.jcraft";
      sha512 = "97ec6de64f4870ee3c84f883bd3664562bfd600ca9f3364966e7dbee7e4e8520647c03f9f81d6808e330052ca1333e37f497d6252cd26fe721a90f573cbe2036";
      version = "0.1.54";
    };
  }

  {
    name = "com.jcraft/jsch.agentproxy.core";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jsch.agentproxy.core";
      groupId = "com.jcraft";
      sha512 = "b397effe92c9a93012ece3eb7660aacce3cef1c07d2b176cfcb7f7d8d735d22ca0c968e76fb36cb2a311566ee4b23982126671bff9baf11b4786606f2a6a0c81";
      version = "0.0.9";
    };
  }

  {
    name = "com.jcraft/jsch.agentproxy.usocket-nc";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jsch.agentproxy.usocket-nc";
      groupId = "com.jcraft";
      sha512 = "b1c67975955bc2ef240e05ecb4c82335f40b038ee4483190e346f633ca1b78de9bfb848a5bee803971acf6b7282b2343461a12615257b2fcb01e7e2c349fc084";
      version = "0.0.9";
    };
  }

  {
    name = "org.clojure/core.cache";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "core.cache";
      groupId = "org.clojure";
      sha512 = "464c8503229dfcb5aa3c09cd74fa273ae82aff7a8f8daadb5c59a4224c7d675da4552ee9cb28d44627d5413c6f580e64df4dbfdde20d237599a46bb8f9a4bf6e";
      version = "0.6.5";
    };
  }

  {
    name = "org.ow2.asm/asm-all";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "asm-all";
      groupId = "org.ow2.asm";
      sha512 = "462f31f8889c5ff07f1ce7bb1d5e9e73b7ec3c31741dc2b3da8d0b1a50df171e8e72289ff13d725e80ecbd9efa7e873b09870f5e8efb547f51f680d2339f290d";
      version = "4.2";
    };
  }

  {
    name = "org.apache.maven/maven-plugin-api";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-plugin-api";
      groupId = "org.apache.maven";
      sha512 = "07090ed707bb3364219da130bc7b38a2a2b9fd31bae51144202b52e5e9f8d9690e8b3fe360bb3327fbeaed3b555c42b52144fb87a5854c8ca2226c07d62e0ed6";
      version = "3.6.3";
    };
  }

  {
    name = "org.clojure/core.async";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "core.async";
      groupId = "org.clojure";
      sha512 = "0b04dcc955a00f53d4304cc0b0c465955775fec2a5c499159d4b2b6bd0408b48acada78b66a304ece0015d4c1822db53483d8bc575ab8cea8bc50d456381b842";
      version = "0.5.527";
    };
  }

  {
    name = "org.apache.maven/maven-artifact";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-artifact";
      groupId = "org.apache.maven";
      sha512 = "53726aee76ea01de2253c623292f64b5bf7784c6e223ebcc7548a2136922cbdf69d3bc42c44d00e6fe2015d2304b67d02d7a988d400da2ed036d489c6ed8fbe6";
      version = "3.6.3";
    };
  }

  {
    name = "org.clojure/data.codec";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "data.codec";
      groupId = "org.clojure";
      sha512 = "c324b62a5f14b2f17e49f1b0fffa3f44d195cb5261e03c5e472ba4f2972135f4b06fd321c0887717c727f025fc1a0121283d16fbf923d7469856702614a288f3";
      version = "0.1.0";
    };
  }

  ];
  }
  