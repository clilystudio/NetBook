.class final Lcom/ushaqi/zhuishushenqi/reader/txt/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/c;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 622
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->getComponentUrl()Ljava/lang/String;

    move-result-object v0

    .line 623
    sput-object v0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/c;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    const-string v2, "\u6717\u8bfb\u63d2\u4ef6"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    .line 624
    return-void
.end method
