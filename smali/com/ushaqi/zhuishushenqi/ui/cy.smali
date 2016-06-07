.class final Lcom/ushaqi/zhuishushenqi/ui/cy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/ui/cd;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Lcom/ushaqi/zhuishushenqi/ui/cw;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/cw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/cy;->e:Lcom/ushaqi/zhuishushenqi/ui/cw;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/cy;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/cy;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ushaqi/zhuishushenqi/ui/cy;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/ushaqi/zhuishushenqi/ui/cy;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 7

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cy;->e:Lcom/ushaqi/zhuishushenqi/ui/cw;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/cw;->a(Lcom/ushaqi/zhuishushenqi/ui/cw;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/cy;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/cy;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/cy;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/cy;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/cy;->e:Lcom/ushaqi/zhuishushenqi/ui/cw;

    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/ui/cw;->b(Lcom/ushaqi/zhuishushenqi/ui/cw;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v6

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/ushaqi/zhuishushenqi/util/T;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/framework/PlatformActionListener;)V

    .line 91
    return-void
.end method
