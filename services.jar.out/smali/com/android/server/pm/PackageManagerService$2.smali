.class final Lcom/android/server/pm/PackageManagerService$2;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 6
    .param p1, "r1"    # Landroid/content/pm/ResolveInfo;
    .param p2, "r2"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 9400
    iget v0, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 9401
    .local v0, "v1":I
    iget v1, p2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 9403
    .local v1, "v2":I
    if-eq v0, v1, :cond_1

    .line 9404
    if-le v0, v1, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 9406
    :cond_1
    iget v0, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 9407
    iget v1, p2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 9408
    if-eq v0, v1, :cond_3

    .line 9409
    if-le v0, v1, :cond_2

    :goto_1
    return v2

    :cond_2
    move v2, v3

    goto :goto_1

    .line 9411
    :cond_3
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v5, p2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v4, v5, :cond_5

    .line 9412
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eqz v4, :cond_4

    :goto_2
    return v2

    :cond_4
    move v2, v3

    goto :goto_2

    .line 9414
    :cond_5
    iget v0, p1, Landroid/content/pm/ResolveInfo;->match:I

    .line 9415
    iget v1, p2, Landroid/content/pm/ResolveInfo;->match:I

    .line 9417
    if-eq v0, v1, :cond_7

    .line 9418
    if-le v0, v1, :cond_6

    :goto_3
    return v2

    :cond_6
    move v2, v3

    goto :goto_3

    .line 9420
    :cond_7
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->system:Z

    iget-boolean v5, p2, Landroid/content/pm/ResolveInfo;->system:Z

    if-eq v4, v5, :cond_9

    .line 9421
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v4, :cond_8

    :goto_4
    return v2

    :cond_8
    move v2, v3

    goto :goto_4

    .line 9423
    :cond_9
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "r1"    # Ljava/lang/Object;
    .param p2, "r2"    # Ljava/lang/Object;

    .prologue
    .line 9399
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1    # "r1":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2    # "r2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$2;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method