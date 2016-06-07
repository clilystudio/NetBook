.class final Lcom/ushaqi/zhuishushenqi/reader/R;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/Reader;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/R;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/R;->a:Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/R;->a:Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/R;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;->getListener(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/reader/ae;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_0

    .line 268
    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/reader/ae;->a()V

    .line 270
    :cond_0
    return-void
.end method
