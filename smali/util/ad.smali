.class final Lcom/ushaqi/zhuishushenqi/util/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/ad;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/util/ad;->b:Ljava/lang/String;

    iput p3, p0, Lcom/ushaqi/zhuishushenqi/util/ad;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/ad;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/ad;->b:Ljava/lang/String;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/util/ad;->c:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 138
    return-void
.end method
