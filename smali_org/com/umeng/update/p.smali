.class final Lcom/umeng/update/p;
.super Lcom/umeng/update/util/a;
.source "SourceFile"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/umeng/update/o;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0, p2}, Lcom/umeng/update/util/a;-><init>(Landroid/content/Context;)V

    .line 195
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/update/p;->d:Ljava/lang/String;

    .line 196
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/update/p;->e:Ljava/lang/String;

    .line 200
    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Notification;
    .locals 5

    .prologue
    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/umeng/update/p;->c:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    .line 230
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 231
    iget-object v0, p0, Lcom/umeng/update/p;->c:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/umeng/update/p;->b:Landroid/app/Notification;

    iget-object v1, p0, Lcom/umeng/update/p;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/update/p;->d:Ljava/lang/String;

    .line 234
    iget-object v3, p0, Lcom/umeng/update/p;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/umeng/update/p;->b:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 233
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 235
    iget-object v0, p0, Lcom/umeng/update/p;->b:Landroid/app/Notification;

    goto :goto_0
.end method

.method public final a(Ljava/lang/CharSequence;)Lcom/umeng/update/p;
    .locals 2

    .prologue
    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/umeng/update/p;->c:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 206
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/update/p;->e:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Lcom/umeng/update/p;
    .locals 2

    .prologue
    .line 211
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/umeng/update/p;->c:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 214
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/update/p;->d:Ljava/lang/String;

    .line 215
    return-object p0
.end method

.method public final c(Ljava/lang/CharSequence;)Lcom/umeng/update/p;
    .locals 2

    .prologue
    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/umeng/update/p;->c:Landroid/app/Notification$Builder;

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 221
    invoke-virtual {v1, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 223
    :cond_0
    return-object p0
.end method
