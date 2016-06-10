.class public final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/c;->a:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/c;->b:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 34
    instance-of v0, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/c;

    iget-object v0, v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/c;->a:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/c;

    iget-object v0, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/c;->b:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/c;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Challenge["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
