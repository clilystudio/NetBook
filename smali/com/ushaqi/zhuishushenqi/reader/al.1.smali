.class final Lcom/ushaqi/zhuishushenqi/reader/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/InitListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 748
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/al;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 2

    .prologue
    .line 751
    if-eqz p1, :cond_0

    .line 752
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/al;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    const-string v1, "\u521d\u59cb\u5316\u8bed\u97f3\u7ec4\u4ef6\u5931\u8d25,\u8bf7\u9000\u51fa\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 754
    :cond_0
    return-void
.end method
