.class final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;
.super Ljava/net/SecureCacheResponse;
.source "SourceFile"


# instance fields
.field private final a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;

.field private final b:Lcom/b/h;

.field private final c:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;Lcom/b/h;)V
    .locals 1

    .prologue
    .line 646
    invoke-direct {p0}, Ljava/net/SecureCacheResponse;-><init>()V

    .line 647
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;

    .line 648
    iput-object p2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;->b:Lcom/b/h;

    .line 649
    invoke-static {p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->a(Lcom/b/h;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;->c:Ljava/io/InputStream;

    .line 650
    return-void
.end method

.method static synthetic a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;)Lcom/b/h;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;->b:Lcom/b/h;

    return-object v0
.end method


# virtual methods
.method public final getBody()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;->c:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getCipherSuite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->c(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 653
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->b(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->g()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalCertificateChain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 680
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->e(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->e(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 681
    :cond_0
    const/4 v0, 0x0

    .line 683
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->e(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;)[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->e(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->e(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 688
    :cond_0
    const/4 v0, 0x0

    .line 690
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->e(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;)[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_0
.end method

.method public final getPeerPrincipal()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->d(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->d(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 674
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->d(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;)[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public final getServerCertificateChain()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 666
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->d(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->d(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 667
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->d(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;)[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
