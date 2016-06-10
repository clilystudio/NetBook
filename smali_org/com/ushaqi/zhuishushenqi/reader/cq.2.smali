.class final Lcom/ushaqi/zhuishushenqi/reader/cq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cq;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cq;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;I)V

    .line 250
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cq;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b()V

    .line 251
    return-void
.end method
