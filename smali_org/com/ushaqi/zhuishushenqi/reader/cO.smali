.class public final Lcom/ushaqi/zhuishushenqi/reader/cO;
.super Lcom/ushaqi/zhuishushenqi/util/R;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/cM;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/cM;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cO;->a:Lcom/ushaqi/zhuishushenqi/reader/cM;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/util/R;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/ushaqi/zhuishushenqi/model/Root;)V
    .locals 2

    .prologue
    .line 73
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;

    .line 1082
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cO;->a:Lcom/ushaqi/zhuishushenqi/reader/cM;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/cM;->b(Lcom/ushaqi/zhuishushenqi/reader/cM;)Lcom/ushaqi/zhuishushenqi/reader/cQ;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cO;->a:Lcom/ushaqi/zhuishushenqi/reader/cM;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/cM;->a(Lcom/ushaqi/zhuishushenqi/reader/cM;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/ushaqi/zhuishushenqi/reader/cQ;->a(Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;[Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method protected final synthetic b(Lcom/ushaqi/zhuishushenqi/model/Root;)V
    .locals 2

    .prologue
    .line 73
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;

    .line 2077
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cO;->a:Lcom/ushaqi/zhuishushenqi/reader/cM;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/cM;->b(Lcom/ushaqi/zhuishushenqi/reader/cM;)Lcom/ushaqi/zhuishushenqi/reader/cQ;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cO;->a:Lcom/ushaqi/zhuishushenqi/reader/cM;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/cM;->a(Lcom/ushaqi/zhuishushenqi/reader/cM;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/ushaqi/zhuishushenqi/reader/cQ;->a(Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;[Ljava/lang/String;)V

    .line 73
    return-void
.end method
