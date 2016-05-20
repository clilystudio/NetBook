.class final Lcom/ushaqi/zhuishushenqi/util/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/ushaqi/zhuishushenqi/util/N;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/util/N;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/O;->d:Lcom/ushaqi/zhuishushenqi/util/N;

    iput-boolean p2, p0, Lcom/ushaqi/zhuishushenqi/util/O;->a:Z

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/util/O;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ushaqi/zhuishushenqi/util/O;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 65
    add-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/O;->d:Lcom/ushaqi/zhuishushenqi/util/N;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/N;->a(Lcom/ushaqi/zhuishushenqi/util/N;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f05013f

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    .line 67
    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/util/O;->a:Z

    if-nez v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/O;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/O;->c:Ljava/lang/String;

    .line 1052
    new-instance v2, Lcom/ushaqi/zhuishushenqi/util/an;

    invoke-direct {v2, v1, v0}, Lcom/ushaqi/zhuishushenqi/util/an;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/util/an;->start()V

    .line 80
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/O;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/O;->b:Ljava/lang/String;

    .line 1069
    new-instance v3, Lcom/ushaqi/zhuishushenqi/util/ao;

    invoke-direct {v3, v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/util/ao;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/util/ao;->start()V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/O;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/O;->c:Ljava/lang/String;

    .line 1085
    new-instance v2, Lcom/ushaqi/zhuishushenqi/util/ap;

    invoke-direct {v2, v1, v0}, Lcom/ushaqi/zhuishushenqi/util/ap;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/util/ap;->start()V

    goto :goto_0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/O;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/O;->b:Ljava/lang/String;

    .line 1101
    new-instance v3, Lcom/ushaqi/zhuishushenqi/util/aq;

    invoke-direct {v3, v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/util/aq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/util/aq;->start()V

    goto :goto_0
.end method
